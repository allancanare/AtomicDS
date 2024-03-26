//
//  IconView.swift
//
//
//  Created by Allan Canare on 2024/03/24.
//

import SwiftUI

// MARK: - View
public struct IconView: View {
    let icon: Icon
    let color: Color?
    let style: Style
    
    // MARK: Init
    public init(_ icon: Icon,
                color: Color? = nil,
                style: Style = .default) {
        self.icon = icon
        self.color = color
        self.style = style
    }
    
    public var body: some View {
        icon.value
            .resizable()
            .renderingMode(.template)
            .foregroundColor(color?.value ?? style.defaultColor.value)
            .frame(width: style.size.value,
                   height: style.size.value)
    }
}

// MARK: - Style
public extension IconView {
    struct Style {
        let size: IconSize
        let defaultColor: Color = .highlightDark
        
        public static let extraExtraLarge = Style(size: .extraExtraLarge)
        public static let extraLarge = Style(size: .extraLarge)
        public static let large = Style(size: .large)
        public static let medium = Style(size: .medium)
        public static let small = Style(size: .small)
        public static let extraSmall = Style(size: .extraSmall)
        public static let extraExtraSmall = Style(size: .extraExtraSmall)
        
        public static let `default` = medium
    }
}

// MARK: - Preview
#Preview {
    NavigationView {
        List {
            HStack {
                IconView(.heartFilled,
                         style: .extraExtraLarge)
                Text("Extra Extra Large")
            }
            
            HStack {
                IconView(.heartFilled,
                         style: .extraLarge)
                Text("Extra Large")
            }
            
            HStack {
                IconView(.heartFilled,
                         style: .large)
                Text("Large")
            }
            
            HStack {
                IconView(.heartFilled,
                         style: .medium)
                Text("Medium")
            }
            
            HStack {
                IconView(.heartFilled,
                         style: .small)
                Text("Small")
            }
            
            HStack {
                IconView(.heartFilled,
                         style: .extraSmall)
                Text("Extra Small")
            }
            
            HStack {
                IconView(.heartFilled,
                         style: .extraExtraSmall)
                Text("Extra Extra Small")
            }
        }
        .navigationTitle("IconViews")
    }
    .preferredColorScheme(.light)
}
