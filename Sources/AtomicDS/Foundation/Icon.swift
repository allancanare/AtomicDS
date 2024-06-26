//
//  Icon.swift
//
//
//  Created by Allan Canare on 2024/03/23.
//

import SwiftUI

public enum Icon {
    case add
    case apple
    case arrowDown
    case arrowLeft
    case arrowRight
    case arrowUp
    case camera
    case categories
    case chat
    case check
    case close
    case create
    case delete
    case edit
    case energy
    case explore
    case eyeInvisible
    case eyeVisible
    case facebook
    case filter
    case google
    case hamburgerMenu
    case heartFilled
    case heartOutlined
    case image
    case inbox
    case info
    case linkedin
    case minus
    case placeholder
    case play
    case profile
    case search
    case send
    case settings
    case shoppingBagFilled
    case shoppingBagOutlined
    case sort
    case starFilled
    case starOutlined
    case store
    case success
    case warning
}

public extension Icon {
    var value: Image {
        switch self {
        case .add:
            return .init("add", bundle: .module)
        case .apple:
            return .init("apple", bundle: .module)
        case .arrowDown:
            return .init("arrow-down", bundle: .module)
        case .arrowLeft:
            return .init("arrow-left", bundle: .module)
        case .arrowRight:
            return .init("arrow-right", bundle: .module)
        case .arrowUp:
            return .init("arrow-up", bundle: .module)
        case .camera:
            return .init("camera", bundle: .module)
        case .categories:
            return .init("categories", bundle: .module)
        case .chat:
            return .init("chat", bundle: .module)
        case .check:
            return .init("check", bundle: .module)
        case .close:
            return .init("close", bundle: .module)
        case .create:
            return .init("create", bundle: .module)
        case .delete:
            return .init("delete", bundle: .module)
        case .edit:
            return .init("edit", bundle: .module)
        case .energy:
            return .init("energy", bundle: .module)
        case .explore:
            return .init("explore", bundle: .module)
        case .eyeInvisible:
            return .init("eye-invisible", bundle: .module)
        case .eyeVisible:
            return .init("eye-visible", bundle: .module)
        case .facebook:
            return .init("facebook", bundle: .module)
        case .filter:
            return .init("filter", bundle: .module)
        case .google:
            return .init("google", bundle: .module)
        case .hamburgerMenu:
            return .init("hamburger-menu", bundle: .module)
        case .heartFilled:
            return .init("heart-filled", bundle: .module)
        case .heartOutlined:
            return .init("heart-outlined", bundle: .module)
        case .image:
            return .init("image", bundle: .module)
        case .inbox:
            return .init("inbox", bundle: .module)
        case .info:
            return .init("info", bundle: .module)
        case .linkedin:
            return .init("linkedin", bundle: .module)
        case .minus:
            return .init("minus", bundle: .module)
        case .placeholder:
            return .init("placeholder", bundle: .module)
        case .play:
            return .init("play", bundle: .module)
        case .profile:
            return .init("profile", bundle: .module)
        case .search:
            return .init("search", bundle: .module)
        case .send:
            return .init("send", bundle: .module)
        case .settings:
            return .init("settings", bundle: .module)
        case .shoppingBagFilled:
            return .init("shopping-bag-filled", bundle: .module)
        case .shoppingBagOutlined:
            return .init("shopping-bag-outlined", bundle: .module)
        case .sort:
            return .init("sort", bundle: .module)
        case .starFilled:
            return .init("star-filled", bundle: .module)
        case .starOutlined:
            return .init("star-outlined", bundle: .module)
        case .store:
            return .init("store", bundle: .module)
        case .success:
            return .init("success", bundle: .module)
        case .warning:
            return .init("warning", bundle: .module)
        }
    }
}

public extension Image {
    init(icon: Icon) {
        self = icon.value
    }
}

extension Icon: CaseIterable { }

#Preview {
    NavigationView {
        List {
            ForEach(Icon.allCases,
                    id: \.self) { icon in
                HStack {
                    icon.value
                        .resizable()
                        .frame(width: 24,
                               height: 24)
                    Text(String(describing: icon))
                }
            }
        }
        .navigationTitle("Icons")
    }
}
