//
//  IconSize.swift
//
//
//  Created by Allan Canare on 2024/03/23.
//

import Foundation

public enum IconSize {
    /// Value: 32
    case extraExtraLarge
    /// Value: 24
    case extraLarge
    /// Value: 20
    case large
    /// Value: 16
    case medium
    /// Value: 12
    case small
    /// Value: 10
    case extraSmall
    /// Value: 8
    case extraExtraSmall
}

public extension IconSize {
    var value: CGFloat {
        switch self {
        case .extraExtraLarge:
            return 32
        case .extraLarge:
            return 24
        case .large:
            return 20
        case .medium:
            return 16
        case .small:
            return 12
        case .extraSmall:
            return 10
        case .extraExtraSmall:
            return 8
        }
    }
}

public extension CGFloat {
    init(_ iconSize: IconSize) {
        self = iconSize.value
    }
}
