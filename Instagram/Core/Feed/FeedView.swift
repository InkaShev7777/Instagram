//
//  FeedView.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 15.08.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 10, id: \.self) { post in
                        FeedCell()
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("instagram-logo")
                        .resizable()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 32)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "paperplane")
                            .foregroundStyle(.black)
                            .imageScale(.large)
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
