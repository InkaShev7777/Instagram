//
//  ProfileView.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 14.08.2024.
//

import SwiftUI

struct ProfileView: View {
    let user: User

    var body: some View {
        ScrollView {
            // header
            ProfileHeaderView(user: user)
            
            //post grid view
            
            PostGridView(user: user)
        }
        .navigationTitle(user.username)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USER[0])
}
