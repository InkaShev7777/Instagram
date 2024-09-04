//
//  PostService.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 04.09.2024.
//

import Foundation
import Firebase

struct PostService {
    private static let postColletion = Firestore.firestore().collection("posts")
    static func fetchFeedPosts() async throws -> [Post]{
        let snaphot = try await postColletion.getDocuments()
        var posts = try snaphot.documents.compactMap({ try $0.data(as: Post.self)})
        
        for i in 0 ..< posts.count {
            let post = posts[i]
            let ownerUIid = post.ownerUid
            let postUser = try await UserService.fetchUser(withUid: ownerUIid)
            posts[i].user = postUser
        }
        return posts
    }
    
    static func fetchUserPosts(uid: String) async throws -> [Post]{
        let snapshot = try await postColletion.whereField("ownerUid", isEqualTo: uid).getDocuments()
        return try snapshot.documents.compactMap({ try $0.data(as: Post.self )})
    }
}
