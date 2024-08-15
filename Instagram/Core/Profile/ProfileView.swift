//
//  ProfileView.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 14.08.2024.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                // header
                VStack(spacing: 10) {
                    // pic and stats
                    HStack {
                        Image("owner-image-profile")
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
                        Text("Ilya Shevchenko")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        
                        Text("IOS Developer")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // action button
                    
                    Button {
                        print("Edit profile button")
                    } label: {
                        Text("Edit profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundStyle(Color(.black))
                            .overlay(RoundedRectangle(cornerRadius: 6) .stroke(Color.gray, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/))
                    }
                    
                    Divider()
                }
                
                //post grid view
                
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach (0 ... 15, id: \.self) { index in
                        Image("cat")
                            .resizable()
                            .scaledToFill()
                            .clipShape(Rectangle())
                    }
                }
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
    ProfileView()
}
