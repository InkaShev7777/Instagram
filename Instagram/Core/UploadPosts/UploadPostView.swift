//
//  UploadPostView.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 17.08.2024.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @StateObject var viewModel = UploadPostViewModel()
    
    var body: some View {
        VStack {
            //action tool bar
            HStack {
                Button {
                    //
                } label: {
                    Text("Cancel")
                }
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
            }
            .padding(.horizontal)
            
            //post image, caption
            HStack(spacing: 8) {
                Image("porsche-1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                
                TextField("Enter your caption...", text: $caption ,axis: .vertical)
            }
            .padding()
            
            Spacer()
        }
        .onAppear {
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }
}

#Preview {
    UploadPostView()
}
