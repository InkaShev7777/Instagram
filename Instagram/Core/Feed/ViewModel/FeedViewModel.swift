//
//  FeedViewModel.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 04.09.2024.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task{ try await fetchPosts() }
    }
    
    @MainActor
    func fetchPosts() async throws {
        let snaphot = try await Firestore.firestore().collection("posts").getDocuments()
        self.posts = try snaphot.documents.compactMap({ try $0.data(as: Post.self) })
        
        for i in 0 ..< posts.count {
            let post = posts[i]
            let ownerUid = post.ownerUid
            let postUser = try await UserService.fetchUser(withUid: ownerUid)
            posts[i].user = postUser
        }
    }
}
