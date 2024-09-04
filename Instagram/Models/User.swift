//
//  User.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 15.08.2024.
//

import Foundation
import FirebaseAuth

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false}
        return currentUid == id
    }
}

extension User {
    static var MOCK_USER: [User] = [
        .init(
            id: NSUUID().uuidString,
            username: "retr0",
            profileImageUrl: nil,
            fullname: "Ilya Shevchenko",
            bio: "IOS Developer",
            email: "inakshev777@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "tech_guru",
            profileImageUrl: nil,
            fullname: "Olga Ivanova",
            bio: "Frontend Developer",
            email: "olga.ivanova@mail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "coderlife",
            profileImageUrl: nil,
            fullname: "Andrey Petrov",
            bio: "Backend Developer",
            email: "andrey.petroff@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "design_pro",
            profileImageUrl: nil,
            fullname: "Marina Sokolova",
            bio: "UI/UX Designer",
            email: "marina.soko@mail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "data_wiz",
            profileImageUrl: nil,
            fullname: "Dmitry Kuznetsov",
            bio: "Data Scientist",
            email: "dmitry.kuznetsov@example.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "dev_ops_master",
            profileImageUrl: nil,
            fullname: "Elena Smirnova",
            bio: "DevOps Engineer",
            email: "elena.smirnova@devops.com"
        )
    ]
}
