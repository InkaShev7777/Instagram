//
//  CercularProfileImageView.swift
//  Instagram
//
//  Created by Ilya Schevchenko on 04.09.2024.
//

import SwiftUI
import Kingfisher

enum ProfileImageSize {
    case xSamll
    case small
    case medium
    case large
    
    var dimension: CGFloat {
        switch self {
        case .xSamll:
            return 40
        case .small:
            return 48
        case .medium:
            return 64
        case .large:
            return 80
        }
    }
}

struct CircularProfileImageView: View {
    let user: User
    let size: ProfileImageSize
    var body: some View {
        if let imageUrl = user.profileImageUrl {
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        } else {
            Image("base-profile-2")
                .resizable()
                .scaledToFit()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        }
    }
}

#Preview {
    CircularProfileImageView(user: User.MOCK_USER[0], size: .large)
}
