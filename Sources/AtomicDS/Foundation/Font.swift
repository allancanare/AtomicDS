//
//  Font.swift
//  
//
//  Created by Allan Canare on 2024/03/23.
//

import SwiftUI

public enum Font {
    // heading
    /// H1
    case headingExtraLarge
    /// H2
    case headingLarge
    /// H3
    case headingMedium
    /// H4
    case headingSmall
    /// H5
    case headingExtraSmall
    
    // body
    case bodyExtraLarge
    case bodyLarge
    case bodyMedium
    case bodySmall
    case bodyExtraSmall
    
    // action
    case actionLarge
    case actionMedium
    case actionSmall
    
    // caption
    case captionMedium
}

public extension Font {
    var value: SwiftUI.Font {
        switch self {
        case .headingExtraLarge:
            return .system(size: 24, weight: .black, design: .default)
        case .headingLarge:
            return .system(size: 18, weight: .black, design: .default)
        case .headingMedium:
            return .system(size: 16, weight: .black, design: .default)
        case .headingSmall:
            return .system(size: 14, weight: .heavy, design: .default)
        case .headingExtraSmall:
            return .system(size: 12, weight: .bold, design: .default)
        case .bodyExtraLarge:
            return .system(size: 18, weight: .regular, design: .default)
        case .bodyLarge:
            return .system(size: 16, weight: .regular, design: .default)
        case .bodyMedium:
            return .system(size: 14, weight: .regular, design: .default)
        case .bodySmall:
            return .system(size: 12, weight: .regular, design: .default)
        case .bodyExtraSmall:
            return .system(size: 10, weight: .medium, design: .default)
        case .actionLarge:
            return .system(size: 14, weight: .semibold, design: .default)
        case .actionMedium:
            return .system(size: 12, weight: .semibold, design: .default)
        case .actionSmall:
            return .system(size: 10, weight: .semibold, design: .default)
        case .captionMedium:
            return .system(size: 10, weight: .semibold, design: .default)
        }
    }
}

public extension SwiftUI.Font {
    init(font: Font) {
        self = font.value
    }
}

#Preview {
    NavigationView {
        List {
            Section("Heading") {
                ForEach([Font.headingExtraLarge,
                         Font.headingLarge,
                         Font.headingMedium,
                         Font.headingSmall,
                         Font.headingExtraSmall],
                        id: \.self) { font in
                    Text(String(describing: font))
                        .font(font.value)
                }
            }
            
            Section("Body") {
                ForEach([Font.bodyExtraLarge,
                         Font.bodyLarge,
                         Font.bodyMedium,
                         Font.bodySmall,
                         Font.bodyExtraSmall],
                        id: \.self) { font in
                    Text(String(describing: font))
                        .font(font.value)
                }
            }
            
            Section("Action") {
                ForEach([Font.actionLarge,
                         Font.actionMedium,
                         Font.actionSmall],
                        id: \.self) { font in
                    Text(String(describing: font))
                        .font(font.value)
                }
            }
            
            Section("Caption") {
                ForEach([Font.captionMedium],
                        id: \.self) { font in
                    Text(String(describing: font))
                        .font(font.value)
                }
            }
        }
        .navigationTitle("Fonts")
    }
}
