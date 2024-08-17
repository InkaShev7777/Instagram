//
//  CurrentUserProfile.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 15.08.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
 
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username})
    }
    
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                // header
                ProfileHeaderView(user: user)
                //post grid view
                
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        
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
