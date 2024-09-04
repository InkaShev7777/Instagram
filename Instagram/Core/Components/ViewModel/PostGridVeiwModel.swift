//
//  PostGridVeiwModel.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 04.09.2024.
//

import Foundation

class PostGridVeiwModel: ObservableObject {
    private let user: User
    @Published var posts = [Post]()
    
    init(user: User) {
        self.user = user
        
        Task { try await fetchUserPosts() }
    }
    
    @MainActor
    func fetchUserPosts() async throws {
        self.posts = try await PostService.fetchUserPosts(uid: self.user.id)
        
        for i in 0 ..< posts.count {
            posts[i].user = self.user
        }
    }
}
