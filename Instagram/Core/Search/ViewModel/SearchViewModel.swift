//
//  SearchViewModel.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 19.08.2024.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fethAllUsers() }
    }
    
    @MainActor
    func fethAllUsers() async throws {
        self.users = try await UserService.fetchAllUsers()
    }
}
