//
//  CurrentUserProfile.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 15.08.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
 
    var body: some View {
        
        NavigationStack {
            ScrollView {
                // header
                ProfileHeaderView(user: user)
                //post grid view
                
                PostGridView(user: user)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    CurrentUsernameView(username: user.username)
                        .padding(.leading, 4)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        AuthService.shared.signout()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(Color(.black))
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USER[0])
}
