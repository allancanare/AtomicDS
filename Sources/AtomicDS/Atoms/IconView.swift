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
    let style: Style
    
    // MARK: Init
    public init(_ icon: Icon,
                style: Style = .default) {
        self.icon = icon
        self.style = style
    }
    
    public var body: some View {
        icon.value
            .resizable()
            .renderingMode(style.color == nil ? .original : .template)
            .foregroundColor(style.color?.value)
            .frame(width: style.size.value,
                   height: style.size.value)
    }
}

// MARK: - Style
public extension IconView {
    struct Style {
        let size: IconSize
        let color: Color?
        
        // Extra Large 24 - Highlight
        public static let extraLargeHighlightDarkest = Style(size: .extraLarge,
                                                             color: .highlightDarkest)
        
        // Extra Large 24 - Light Gray
        public static let extraLargeLightGrayLightest = Style(size: .extraLarge,
                                                              color: .lightGrayLightest)
        
        // Large 20 - Highlight
        public static let largeHighlightDarkest = Style(size: .large,
                                                        color: .highlightDarkest)
        
        // Large 20 - Light Gray
        public static let largeLightGrayDarkest = Style(size: .large,
                                                        color: .lightGrayDarkest)
        public static let largeLightGrayDark = Style(size: .large,
                                                     color: .lightGrayDark)
        
        // Medium 16 - Highlight
        public static let mediumHighlightDarkest = Style(size: .medium,
                                                         color: .highlightDarkest)
        
        // Medium 16 - Light Gray
        public static let mediumLightGrayLightest = Style(size: .medium,
                                                          color: .lightGrayLightest)
        
        // Medium 16 - Dark Gray
        public static let mediumDarkGrayDark = Style(size: .medium,
                                                     color: .darkGrayDark)
        public static let mediumDarkGrayLightest = Style(size: .medium,
                                                         color: .darkGrayLightest)
        
        // Small 12 - Highlight
        public static let smallHighlightDarkest = Style(size: .small,
                                                        color: .highlightDarkest)
        public static let smallHighlightDark = Style(size: .small,
                                                     color: .highlightDark)
        public static let smallHighlightMedium = Style(size: .small,
                                                       color: .highlightMedium)
        
        // Small 12 - Light Gray
        public static let smallLightGrayDarkest = Style(size: .small,
                                                        color: .lightGrayDarkest)
        public static let smallLightGrayMedium = Style(size: .small,
                                                       color: .lightGrayMedium)
        public static let smallLightGrayLight = Style(size: .small,
                                                      color: .lightGrayLight)
        public static let smallLightGrayLightest = Style(size: .small,
                                                         color: .lightGrayLightest)
        
        // Extra Small 10 - Dark Gray
        public static let smallDarkGrayLightest = Style(size: .small,
                                                        color: .darkGrayLightest)
        
        // Extra Small 10 - Highlight
        public static let extraSmallHighlightDarkest = Style(size: .extraSmall,
                                                             color: .highlightDarkest)
        
        // Extra Small 10 - Light Gray
        public static let extraSmallLightGrayDarkest = Style(size: .extraSmall,
                                                             color: .lightGrayDarkest)
        public static let extraSmallLightGrayLightest = Style(size: .extraSmall,
                                                              color: .lightGrayLightest)
        
        // Extra Extra Small 8 - Light Gray
        public static let extraExtraSmallLightGrayLightest = Style(size: .extraExtraSmall,
                                                                   color: .lightGrayLightest)
        
        // Default
        public static let `default` = mediumDarkGrayDark
    }
}

// MARK: - Preview
#Preview {
    NavigationView {
        List {
            Section("Extra Large") {
                IconView(.heartFilled,
                         style: .extraLargeHighlightDarkest)
                IconView(.heartFilled,
                         style: .extraLargeLightGrayLightest)
            }
            
            Section("Large") {
                IconView(.heartFilled,
                         style: .largeHighlightDarkest)
                IconView(.heartFilled,
                         style: .largeLightGrayDarkest)
                IconView(.heartFilled,
                         style: .largeLightGrayDark)
            }
            
            Section("Medium") {
                IconView(.heartFilled,
                         style: .mediumHighlightDarkest)
                IconView(.heartFilled,
                         style: .mediumLightGrayLightest)
                IconView(.heartFilled,
                         style: .mediumDarkGrayDark)
                IconView(.heartFilled,
                         style: .mediumDarkGrayLightest)
            }
            
            Section("Small") {
                IconView(.heartFilled,
                         style: .smallHighlightDarkest)
                IconView(.heartFilled,
                         style: .smallLightGrayDarkest)
                IconView(.heartFilled,
                         style: .smallLightGrayLightest)
                IconView(.heartFilled,
                         style: .smallDarkGrayLightest)
            }
            
            Section("Extra Small") {
                IconView(.heartFilled,
                         style: .extraSmallHighlightDarkest)
                IconView(.heartFilled,
                         style: .extraSmallLightGrayDarkest)
                IconView(.heartFilled,
                         style: .extraSmallLightGrayLightest)
            }
            
            Section("Extra Extra Small") {
                IconView(.heartFilled,
                         style: .extraExtraSmallLightGrayLightest)
            }
        }
        .navigationTitle("IconViews")
    }
    .preferredColorScheme(.dark)
}
