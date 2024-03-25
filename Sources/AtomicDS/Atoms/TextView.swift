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
            .foregroundColor(style.color.value)
    }
}

// MARK: - Style
public extension TextView {
    struct Style {
        let font: Font
        let color: Color
        
        // Heading - Medium - Dark Gray
        public static let headingMediumDarkGrayDarkest = Style(font: .headingMedium,
                                                               color: .darkGrayDarkest)
        
        // Heading - Small - Dark Gray
        public static let headingSmallDarkGrayDarkest = Style(font: .headingSmall,
                                                              color: .darkGrayDarkest)
        
        // Heading - Extra Small - Highlight
        public static let headingExtraSmallHighlightLight = Style(font: .headingExtraSmall,
                                                                  color: .highlightLight)
        
        // Heading - Extra Small - Light Gray
        public static let headingExtraSmallLightGrayLightest = Style(font: .headingExtraSmall,
                                                                     color: .lightGrayLightest)
        
        // Heading - Extra Small - Dark Gray
        public static let headingExtraSmallDarkGrayDarkest = Style(font: .headingExtraSmall,
                                                                   color: .darkGrayDarkest)
        public static let headingExtraSmallDarkGrayDark = Style(font: .headingExtraSmall,
                                                                color: .darkGrayDark)
        public static let headingExtraSmallDarkGrayMedium = Style(font: .headingExtraSmall,
                                                                  color: .darkGrayMedium)
        public static let headingExtraSmallDarkGrayLight = Style(font: .headingExtraSmall,
                                                                 color: .darkGrayLight)
        public static let headingExtraSmallDarkGrayLightest = Style(font: .headingExtraSmall,
                                                                    color: .darkGrayLightest)
        
        // Body - Large - Light Gray
        public static let bodyLargeLightGrayLightest = Style(font: .bodyLarge,
                                                             color: .lightGrayLightest)
        
        // Body - Large - Dark Gray
        public static let bodyLargeDarkGrayMedium = Style(font: .bodyLarge,
                                                          color: .darkGrayMedium)
        
        // Body - Medium - Dark Gray
        public static let bodyMediumDarkGrayDarkest = Style(font: .bodyMedium,
                                                            color: .darkGrayDarkest)
        public static let bodyMediumDarkGrayLight = Style(font: .bodyMedium,
                                                          color: .darkGrayLight)
        public static let bodyMediumDarkGrayLightest = Style(font: .bodyMedium,
                                                             color: .darkGrayLightest)
        
        // Body - Medium - Error
        public static let bodyMediumErrorDark = Style(font: .bodyMedium,
                                                      color: .errorDark)
        
        // Body - Small - Dark Gray
        public static let bodySmallDarkGrayDarkest = Style(font: .bodySmall,
                                                           color: .darkGrayDarkest)
        public static let bodySmallDarkGrayMedium = Style(font: .bodySmall,
                                                          color: .darkGrayMedium)
        public static let bodySmallDarkGrayLight = Style(font: .bodySmall,
                                                         color: .darkGrayLight)
        
        // Body - Extra Small - Light Gray
        public static let bodyExtraSmallLightGrayDark = Style(font: .bodyExtraSmall,
                                                              color: .lightGrayDark)
        
        // Body - Extra Small - Dark Gray
        public static let bodyExtraSmallDarkGrayLight = Style(font: .bodyExtraSmall,
                                                              color: .darkGrayLight)
        public static let bodyExtraSmallDarkGrayLightest = Style(font: .bodyExtraSmall,
                                                                 color: .darkGrayLightest)
        
        // Body - Extra Small - Error
        public static let bodyExtraSmallErrorDark = Style(font: .bodyExtraSmall,
                                                          color: .errorDark)
        
        // Action - Medium - Highlight
        public static let actionMediumHighlightDarkest = Style(font: .actionMedium,
                                                               color: .highlightDarkest)
        public static let actionMediumHighlightDark = Style(font: .actionMedium,
                                                            color: .highlightDark)
        public static let actionMediumHighlightMedium = Style(font: .actionMedium,
                                                              color: .highlightMedium)
        
        // Action - Medium - Light Gray
        public static let actionMediumLightGrayMedium = Style(font: .actionMedium,
                                                              color: .lightGrayMedium)
        public static let actionMediumLightGrayLight = Style(font: .actionMedium,
                                                             color: .lightGrayLight)
        public static let actionMediumLightGrayLightest = Style(font: .actionMedium,
                                                                color: .lightGrayLightest)
        
        // Action - Medium - Dark Gray
        public static let actionMediumDarkGrayLight = Style(font: .actionMedium,
                                                            color: .darkGrayLight)
        
        // Action - Small - Dark Gray
        public static let actionSmallDarkGrayDarkest = Style(font: .actionSmall,
                                                             color: .darkGrayDarkest)
        
        // Caption - Medium - Highlight
        public static let captionMediumHighlightDarkest = Style(font: .captionMedium,
                                                                color: .highlightDarkest)
        public static let captionMediumHighlightLight = Style(font: .captionMedium,
                                                              color: .highlightLight)
        
        // Caption - Medium - Light Gray
        public static let captionMediumLightGrayLightest = Style(font: .captionMedium,
                                                                 color: .lightGrayLightest)
        
        // Caption - Medium - Dark Gray
        public static let captionMediumDarkGrayLightest = Style(font: .captionMedium,
                                                                color: .darkGrayLightest)
        
        // Default
        public static let `default` = bodyMediumDarkGrayDarkest
    }
}

// MARK: - Preview
#Preview {
    NavigationView {
        List {
            Section("Heading - Medium") {
                TextView("Hello World!",
                         style: .headingMediumDarkGrayDarkest)
            }
            
            Section("Heading - Small") {
                TextView("Hello World!",
                         style: .headingSmallDarkGrayDarkest)
            }
            
            Section("Heading - Extra Small") {
                TextView("Hello World!",
                         style: .headingExtraSmallHighlightLight)
                TextView("Hello World!",
                         style: .headingExtraSmallLightGrayLightest)
                TextView("Hello World!",
                         style: .headingExtraSmallDarkGrayDarkest)
                TextView("Hello World!",
                         style: .headingExtraSmallDarkGrayDark)
                TextView("Hello World!",
                         style: .headingExtraSmallDarkGrayMedium)
                TextView("Hello World!",
                         style: .headingExtraSmallDarkGrayLight)
                TextView("Hello World!",
                         style: .headingExtraSmallDarkGrayLightest)
            }
            
            Section("Body - Large") {
                TextView("Hello World!",
                         style: .bodyLargeLightGrayLightest)
                TextView("Hello World!",
                         style: .bodyLargeDarkGrayMedium)
            }
            
            Section("Body - Medium") {
                TextView("Hello World!",
                         style: .bodyMediumDarkGrayDarkest)
                TextView("Hello World!",
                         style: .bodyMediumDarkGrayLight)
                TextView("Hello World!",
                         style: .bodyMediumDarkGrayLightest)
                TextView("Hello World!",
                         style: .bodyMediumErrorDark)
            }
            
            Section("Body - Small") {
                TextView("Hello World!",
                         style: .bodySmallDarkGrayDarkest)
                TextView("Hello World!",
                         style: .bodySmallDarkGrayMedium)
                TextView("Hello World!",
                         style: .bodySmallDarkGrayLight)
            }
            
            Section("Body - Extra Small") {
                TextView("Hello World!",
                         style: .bodyExtraSmallLightGrayDark)
                TextView("Hello World!",
                         style: .bodyExtraSmallDarkGrayLight)
                TextView("Hello World!",
                         style: .bodyExtraSmallDarkGrayLightest)
                TextView("Hello World!",
                         style: .bodyExtraSmallErrorDark)
            }
            
            Section("Action - Medium") {
                TextView("Hello World!",
                         style: .actionMediumHighlightDarkest)
                TextView("Hello World!",
                         style: .actionMediumLightGrayLightest)
                TextView("Hello World!",
                         style: .actionMediumDarkGrayLight)
            }
            
            Section("Action - Small") {
                TextView("Hello World!",
                         style: .actionSmallDarkGrayDarkest)
            }
            
            Section("Caption - Medium") {
                TextView("Hello World!",
                         style: .captionMediumHighlightDarkest)
                TextView("Hello World!",
                         style: .captionMediumHighlightLight)
                TextView("Hello World!",
                         style: .captionMediumLightGrayLightest)
                TextView("Hello World!",
                         style: .captionMediumDarkGrayLightest)
            }
        }
        .navigationTitle("TextViews")
    }
    .preferredColorScheme(.light)
}
