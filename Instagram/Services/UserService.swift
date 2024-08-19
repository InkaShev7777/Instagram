//
//  UserService.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 19.08.2024.
//

import Foundation
import Firebase

struct UserService {
    
    static func fetchAllUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let document = snapshot.documents
        
        return snapshot.documents.compactMap({ try? $0.data(as: User.self) })
    }
}
