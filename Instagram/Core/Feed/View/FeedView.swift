//
//  FeedView.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 15.08.2024.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(viewModel.posts) { post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }
            .toolbar {
                // logo
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("instagram-logo")
                        .resizable()
                        .frame(width: 140, height: 45)
                }
                // butons
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    HStack {
                        Button {
                            // action
                        } label: {
                            
                            Image(systemName: "heart")
                                .foregroundStyle(.black)
                                .imageScale(.large)
                                .fontWeight(.semibold)
                        }
                        
                        Button {
                            // action
                        } label: {
                            Image(systemName: "message")
                            //Image(systemName: "paperplane")
                                .foregroundStyle(.black)
                                .imageScale(.large)
                                .fontWeight(.semibold)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
