//
//  RegistrationViewModel.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 17.08.2024.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
    }
}
