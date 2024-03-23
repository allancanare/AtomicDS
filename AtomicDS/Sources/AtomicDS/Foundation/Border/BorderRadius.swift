//
//  BorderRadius.swift
//
//
//  Created by Allan Canare on 2024/03/23.
//

import Foundation

enum BorderRadius {
    /// Value: 32
    case extraExtraLarge
    /// Value: 24
    case extraLarge
    /// Value: 16
    case large
    /// Value: 12
    case medium
    /// Value: 8
    case small
    /// Value: 4
    case extraSmall
    /// Value: 2
    case extraExtraSmall
}

extension BorderRadius {
    var value: CGFloat {
        switch self {
        case .extraExtraLarge:
            return 32
        case .extraLarge:
            return 24
        case .large:
            return 16
        case .medium:
            return 12
        case .small:
            return 8
        case .extraSmall:
            return 4
        case .extraExtraSmall:
            return 2
        }
    }
}

extension CGFloat {
    init(_ borderRadius: BorderRadius) {
        self = borderRadius.value
    }
}
