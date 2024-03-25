//
//  AvatarView.swift
//
//
//  Created by Allan Canare on 2024/03/24.
//

import SwiftUI

// MARK: - View
public struct AvatarView: View {
    let url: URL?
    let style: Style
    
    // MARK: Init
    public init(url: URL?,
                style: Style = .medium) {
        self.url = url
        self.style = style
    }
    
    public var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .success(let image):
                image
                    .resizable()
            default:
                placeholder
            }
        }
        .frame(width: style.size,
               height: style.size)
        .clipShape(RoundedRectangle(cornerRadius: style.cornerRadius))
    }
    
    var placeholder: some View {
        ZStack {
            Color.highlightLightest.value
            VStack {
                Spacer()
                Icon.profile.value
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color.highlightLight.value)
                    .frame(width: style.size * 0.8,
                           height: style.size * 0.8)
            }
        }
    }
}

// MARK: - Style
public extension AvatarView {
    struct Style {
        let cornerRadius: CGFloat
        let size: CGFloat
        
        public static let small = Style(cornerRadius: 16,
                                        size: 40)
        public static let medium = Style(cornerRadius: 20,
                                         size: 56)
        public static let large = Style(cornerRadius: 32,
                                        size: 80)
    }
}

#Preview {
    let avatarURL = URL(string: "https://workfromcafe.app/assets/appicon.png")
    return NavigationView {
        List {
            Section("With URL") {
                HStack {
                    AvatarView(url: avatarURL,
                               style: .small)
                    Text("Small")
                }
                HStack {
                    AvatarView(url: avatarURL,
                               style: .medium)
                    Text("Medium")
                }
                HStack {
                    AvatarView(url: avatarURL,
                               style: .large)
                    Text("Large")
                }
            }
            Section("Without URL") {
                HStack {
                    AvatarView(url: nil,
                               style: .small)
                    Text("Small")
                }
                HStack {
                    AvatarView(url: nil,
                               style: .medium)
                    Text("Medium")
                }
                HStack {
                    AvatarView(url: nil,
                               style: .large)
                    Text("Large")
                }
            }
        }
        .navigationTitle("AvatarView")
    }
    .preferredColorScheme(.light)
}
