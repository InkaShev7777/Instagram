//
//  Post.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 17.08.2024.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}


extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "This is some caption",
            likes: 10,
            imageUrl: "porsche-1",
            timestamp: Date(),
            user: User.MOCK_USER[0]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Enjoying the sunset by the beach",
            likes: 25,
            imageUrl: "cat",
            timestamp: Date(),
            user: User.MOCK_USER[1]
        ),

        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "A beautiful day in the mountains",
            likes: 40,
            imageUrl: "rs6-1",
            timestamp: Date(),
            user: User.MOCK_USER[2]
        ),

        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Delicious homemade pizza",
            likes: 30,
            imageUrl: "bmw-xm",
            timestamp: Date(),
            user: User.MOCK_USER[3]
        ),

        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Morning coffee vibes",
            likes: 18,
            imageUrl: "bmw-xm",
            timestamp: Date(),
            user: User.MOCK_USER[4]
        ),

        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Exploring the city lights",
            likes: 55,
            imageUrl: "bmw-xm",
            timestamp: Date(),
            user: User.MOCK_USER[5]
        ),

        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Chilling with the best company",
            likes: 33,
            imageUrl: "bmw-xm",
            timestamp: Date(),
            user: User.MOCK_USER[5]
        ),

        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Adventure awaits",
            likes: 47,
            imageUrl: "bmw-xm",
            timestamp: Date(),
            user: User.MOCK_USER[4]
        )

    ]
}
