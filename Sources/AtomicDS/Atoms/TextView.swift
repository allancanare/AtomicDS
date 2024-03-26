//
//  TextView.swift
//
//
//  Created by Allan Canare on 2024/03/24.
//

import SwiftUI

// MARK: - View
public struct TextView: View {
    let text: String
    let style: Style
    
    // MARK: Init
    public init(_ text: String,
                style: Style = .default) {
        self.text = text
        self.style = style
    }
    
    public var body: some View {
        Text(text)
            .font(style.font.value)
    }
    
    public func setFontColor(_ color: Color) -> some View {
        self
            .foregroundStyle(color.value)
    }
}

// MARK: - Style
public extension TextView {
    struct Style {
        let font: Font
        
        public static let headingExtraLarge = Style(font: .headingExtraLarge)
        public static let headingLarge = Style(font: .headingLarge)
        public static let headingMedium = Style(font: .headingMedium)
        public static let headingSmall = Style(font: .headingSmall)
        public static let headingExtraSmall = Style(font: .headingExtraSmall)
        
        public static let bodyExtraLarge = Style(font: .bodyExtraLarge)
        public static let bodyLarge = Style(font: .bodyLarge)
        public static let bodyMedium = Style(font: .bodyMedium)
        public static let bodySmall = Style(font: .bodySmall)
        public static let bodyExtraSmall = Style(font: .bodyExtraSmall)
        
        public static let actionLarge = Style(font: .actionLarge)
        public static let actionMedium = Style(font: .actionMedium)
        public static let actionSmall = Style(font: .actionSmall)
        
        public static let captionMedium = Style(font: .captionMedium)
        
        public static let `default` = Style.bodyMedium
    }
}

// MARK: - Preview
#Preview {
    NavigationView {
        List {
            Section("Heading") {
                TextView("Heading XL",
                         style: .headingExtraLarge)
                TextView("Heading L",
                         style: .headingLarge)
                TextView("Heading M",
                         style: .headingMedium)
                TextView("Heading S",
                         style: .headingSmall)
                TextView("Heading XS",
                         style: .headingExtraSmall)
            }
            Section("Body") {
                TextView("Body XL",
                         style: .bodyExtraLarge)
                TextView("Body L",
                         style: .bodyLarge)
                TextView("Body M",
                         style: .bodyMedium)
                TextView("Body S",
                         style: .bodySmall)
                TextView("Body XS",
                         style: .bodyExtraSmall)
            }
            Section("Action") {
                TextView("Action L",
                         style: .actionLarge)
                TextView("Action M",
                         style: .actionMedium)
                TextView("Action S",
                         style: .actionSmall)
            }
            Section("Caption") {
                TextView("Caption M",
                         style: .captionMedium)
            }
        }
        .navigationTitle("TextView")
    }
    .preferredColorScheme(.light)
}
