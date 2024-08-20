//
//  EditProfileView.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 20.08.2024.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var selectedImage: PhotosPickerItem?
    @State private var name = ""
    @State private var bio = ""
    
    var body: some View {
        VStack {
            // toolbar
            VStack {
                HStack {
                    Button("Cancel") {
                        dismiss()
                    }
                    
                    Spacer()
                    
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button{
                        print("DEBUG: done button")
                    } label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                    
                }
                .padding(.horizontal)
                
                Divider()
            }
            
            
            // edit profile pic
            PhotosPicker(selection: $selectedImage) {
                VStack {
                    Image("base-profile-2")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                    Text("Edit profile picture")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical, 3)
                    
                    Divider()
                }
            }
            
            //edit profile name, bio (info)
            
            VStack{
                EditProfileRowView(title: "Name", placeholder: "Enter your name...", text: $name)
                
                EditProfileRowView(title: "Bio", placeholder: "Enter your bio...", text: $bio)
            }
            
            Spacer()
        }
    }
}

struct EditProfileRowView: View {
    let title: String
    let placeholder: String
    
    @Binding var text: String
    
    var body: some View {
        
        HStack {
            Text(title)
                .padding(.leading, 8)
                .frame(width: 100, alignment: .leading)
            
            VStack {
                TextField(placeholder, text: $text)
                
                Divider()
            }
        }
        .font(.subheadline)
        .frame(height: 36)
    }
}

#Preview {
    EditProfileView()
}
