//
//  CurrentUsernameView.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 18.08.2024.
//

import SwiftUI

struct CurrentUsernameView: View {
    var username: String
    var body: some View {
        VStack {
            HStack {
                Text(username)
                    .font(.title2)
                    .fontWeight(.bold)
                
                
                Button {
                    
                } label: {
                    Image(systemName: "chevron.down")
                        .foregroundStyle(.black)
                        .font(.subheadline)
                        .fontWeight(.medium)
                }
            }
        }
    }
}

#Preview {
    CurrentUsernameView(username: "teste_username")
}
