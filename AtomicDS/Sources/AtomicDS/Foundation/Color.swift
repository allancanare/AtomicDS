//
//  Color.swift
//
//
//  Created by Allan Canare on 2024/03/23.
//

import SwiftUI

enum Color {
    // highlight
    case highlightDarkest
    case highlightDark
    case highlightMedium
    case highlightLight
    case highlightLightest
    
    // light gray
    case lightGrayDarkest
    case lightGrayDarkest10
    case lightGrayDark
    case lightGrayMedium
    case lightGrayLight
    case lightGrayLightest
    
    // dark gray
    case darkGrayDarkest
    case darkGrayDark
    case darkGrayMedium
    case darkGrayLight
    case darkGrayLightest
    
    // success
    case successDark
    case successMedium
    case successLight
    
    // warning
    case warningDark
    case warningMedium
    case warningLight
    
    // error
    case errorDark
    case errorMedium
    case errorLight
    
    // others
    case clear
}

extension Color {
    var value: SwiftUI.Color {
        switch self {
        case .highlightDarkest:
            return .init(hex: 0x006FFD)
        case .highlightDark:
            return .init(hex: 0x2897FF)
        case .highlightMedium:
            return .init(hex: 0x6FB9FF)
        case .highlightLight:
            return .init(hex: 0xB3DAFF)
        case .highlightLightest:
            return .init(hex: 0xEAF2FF)
        case .lightGrayDarkest:
            return .init(hex: 0xC5C6CC)
        case .lightGrayDarkest10:
            return Color.lightGrayDarkest.value.opacity(0.1)
        case .lightGrayDark:
            return .init(hex: 0xD4D6DD)
        case .lightGrayMedium:
            return .init(hex: 0xE8E9F1)
        case .lightGrayLight:
            return .init(hex: 0xF8F9FE)
        case .lightGrayLightest:
            return .init(hex: 0xFFFFFF)
        case .darkGrayDarkest:
            return .init(hex: 0x1E1E1E)
        case .darkGrayDark:
            return .init(hex: 0x2F3036)
        case .darkGrayMedium:
            return .init(hex: 0x494A50)
        case .darkGrayLight:
            return .init(hex: 0x71727A)
        case .darkGrayLightest:
            return .init(hex: 0x8F9098)
        case .successDark:
            return .init(hex: 0x298267)
        case .successMedium:
            return .init(hex: 0x3AC0A0)
        case .successLight:
            return .init(hex: 0xE7F4E8)
        case .warningDark:
            return .init(hex: 0xE86339)
        case .warningMedium:
            return .init(hex: 0xFFB37C)
        case .warningLight:
            return .init(hex: 0xFFF4E4)
        case .errorDark:
            return .init(hex: 0xED3241)
        case .errorMedium:
            return .init(hex: 0xFF616D)
        case .errorLight:
            return .init(hex: 0xFFE2E5)
        case .clear:
            return .clear
        }
    }
}

extension SwiftUI.Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(.sRGB,
                  red: Double((hex >> 16) & 0xff) / 255,
                  green: Double((hex >> 08) & 0xff) / 255,
                  blue: Double((hex >> 00) & 0xff) / 255,
                  opacity: alpha)
    }
}

extension Color: CustomDebugStringConvertible {
    var debugDescription: String {
        switch self {
        case .highlightDarkest:
            return "Highlight Darkest"
        case .highlightDark:
            return "Highlight Dark"
        case .highlightMedium:
            return "Highlight Medium"
        case .highlightLight:
            return "Highlight Light"
        case .highlightLightest:
            return "Highlight Lightest"
        case .lightGrayDarkest:
            return "Light Gray Darkest"
        case .lightGrayDarkest10:
            return "Light Gray Darkest 10"
        case .lightGrayDark:
            return "Light Gray Dark"
        case .lightGrayMedium:
            return "Light Gray Medium"
        case .lightGrayLight:
            return "Light Gray Light"
        case .lightGrayLightest:
            return "Light Gray Lightest"
        case .darkGrayDarkest:
            return "Dark Gray Darkest"
        case .darkGrayDark:
            return "Dark Gray Dark"
        case .darkGrayMedium:
            return "Dark Gray Medium"
        case .darkGrayLight:
            return "Dark Gray Light"
        case .darkGrayLightest:
            return "Dark Gray Lightest"
        case .successDark:
            return "Success Dark"
        case .successMedium:
            return "Success Medium"
        case .successLight:
            return "Success Light"
        case .warningDark:
            return "Warning Dark"
        case .warningMedium:
            return "Warning Medium"
        case .warningLight:
            return "Warning Light"
        case .errorDark:
            return "Error Dark"
        case .errorMedium:
            return "Error Medium"
        case .errorLight:
            return "Error Light"
        case .clear:
            return "Clear"
        }
    }
}

#Preview {
    NavigationView {
        List {
            Section("Highlight") {
                ForEach([Color.highlightDarkest,
                         Color.highlightDark,
                         Color.highlightMedium,
                         Color.highlightLight,
                         Color.highlightLightest],
                        id: \.self) { color in
                    HStack {
                        color.value
                            .frame(width: 24,
                                   height: 24)
                        Text(color.debugDescription)
                    }
                }
            }
            
            Section("Light Gray") {
                ForEach([Color.lightGrayDarkest,
                         Color.lightGrayDark,
                         Color.lightGrayMedium,
                         Color.lightGrayLight,
                         Color.lightGrayLightest],
                        id: \.self) { color in
                    HStack {
                        color.value
                            .frame(width: 24,
                                   height: 24)
                        Text(color.debugDescription)
                    }
                }
            }
            
            Section("Dark Gray") {
                ForEach([Color.darkGrayDarkest,
                         Color.darkGrayDark,
                         Color.darkGrayMedium,
                         Color.darkGrayLight,
                         Color.darkGrayLightest],
                        id: \.self) { color in
                    HStack {
                        color.value
                            .frame(width: 24,
                                   height: 24)
                        Text(color.debugDescription)
                    }
                }
            }
            
            Section("Success") {
                ForEach([Color.successDark,
                         Color.successMedium,
                         Color.successLight],
                        id: \.self) { color in
                    HStack {
                        color.value
                            .frame(width: 24,
                                   height: 24)
                        Text(color.debugDescription)
                    }
                }
            }
            
            Section("Warning") {
                ForEach([Color.warningDark,
                         Color.warningMedium,
                         Color.warningLight],
                        id: \.self) { color in
                    HStack {
                        color.value
                            .frame(width: 24,
                                   height: 24)
                        Text(color.debugDescription)
                    }
                }
            }
            
            Section("Error") {
                ForEach([Color.errorDark,
                         Color.errorMedium,
                         Color.errorLight],
                        id: \.self) { color in
                    HStack {
                        color.value
                            .frame(width: 24,
                                   height: 24)
                        Text(color.debugDescription)
                    }
                }
            }
        }
        .navigationTitle("Colors")
    }
}
