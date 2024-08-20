//
//  ProfileHeaderView.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 17.08.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    @State private var showEditProfile = false
    
    var body: some View {
        VStack(spacing: 10) {
            // pic and stats
            HStack {
                Image(user.profileImageUrl ?? "base-profile-2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8) {
                    
                    UserStatView(value: 3, title: "Posts")
                    
                    UserStatView(value: 12, title: "Folowers")
                    
                    UserStatView(value: 3, title: "Following")
                }
            }
            .padding(.horizontal)
            
            // name and bio
            VStack(alignment: .leading, spacing: 4) {
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            // action button
            
            Button {
                if user.isCurrentUser {
                    showEditProfile.toggle()
                } else {
                    print("DEBUG: follow user")
                }
                
            } label: {
                Text(user.isCurrentUser ? "Edit profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? Color(.white) : Color(.systemBlue))
                    .cornerRadius(6)
                    .foregroundStyle(user.isCurrentUser ? .black : .white)
                    .overlay(RoundedRectangle(cornerRadius: 6) .stroke(user.isCurrentUser ? .gray : .clear, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/))
            }
            
            Divider()
        }
        .fullScreenCover(isPresented: $showEditProfile) {
            Text("Edit profile view")
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USER[0])
}
