//
//  LoginView.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 15.08.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                //logo
                Image("instagram-logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                
                // text fields
                VStack(spacing: 16) {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                
                // forgot pass button
                Button {
                    //
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                // login button
                Button {
                    //
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 44)
                        .foregroundStyle(.white)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                .padding(.vertical)
                
                // or divider
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundStyle(.gray)
                
                //facebook button
                HStack {
                    Image("facebook-logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    Text("Sign up")
                } label: {
                    HStack(spacing: 3) {
                        Text("Don`t have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
        
    }
}

#Preview {
    LoginView()
}
