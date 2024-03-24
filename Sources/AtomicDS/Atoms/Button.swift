//
//  Button.swift
//
//
//  Created by Allan Canare on 2024/03/24.
//

import SwiftUI

// MARK: - View
public struct Button: View {
    let leftIcon: Icon?
    let title: String?
    let rightIcon: Icon?
    let style: Style
    let action: () -> Void
    
    @Environment(\.isEnabled) private var isEnabled
    
    // MARK: Init
    init(leftIcon: Icon? = nil,
         title: String? = nil,
         rightIcon: Icon? = nil,
         style: Style,
         action: @escaping () -> Void) {
        self.leftIcon = leftIcon
        self.title = title
        self.rightIcon = rightIcon
        self.style = style
        self.action = action
    }
    
    // MARK: Body
    public var body: some View {
        SwiftUI.Button(action: action) {
            VStack {
                Spacer(minLength: .init(spacing: .medium))
                HStack(spacing: .init(spacing: .small)) {
                    Spacer(minLength: .init(spacing: .small))
                    if let leftIcon = leftIcon {
                        IconView(leftIcon,
                                 style: isEnabled ? style.iconViewStyle : style.iconViewStyleDisabled)
                    }
                    if let title = title {
                        TextView(title,
                                 style: isEnabled ? style.textViewStyle : style.textViewStyleDisabled)
                    }
                    if let rightIcon = rightIcon {
                        IconView(rightIcon,
                                 style: isEnabled ? style.iconViewStyle : style.iconViewStyleDisabled)
                    }
                    Spacer(minLength: .init(spacing: .small))
                }
                Spacer(minLength: .init(spacing: .medium))
            }
        }
        .buttonStyle(ButtonStyle(style: style))
    }
}

// MARK: - Style
public extension Button {
    struct Style {
        let iconViewStyle: IconView.Style
        let iconViewStyleDisabled: IconView.Style
        let textViewStyle: TextView.Style
        let textViewStyleDisabled: TextView.Style
        let backgroundColor: Color
        let backgroundColorDisabled: Color
        let borderColor: Color?
        let borderColorDisabled: Color?
        let borderWidth: BorderWidth?
        
        public static let primary = Style(iconViewStyle: .smallLightGrayLightest,
                                          iconViewStyleDisabled: .smallLightGrayLightest,
                                          textViewStyle: .actionMediumLightGrayLightest,
                                          textViewStyleDisabled: .actionMediumLightGrayLightest,
                                          backgroundColor: .highlightDarkest,
                                          backgroundColorDisabled: .highlightMedium,
                                          borderColor: nil,
                                          borderColorDisabled: nil,
                                          borderWidth: nil)
        
        public static let secondary = Style(iconViewStyle: .smallHighlightDarkest,
                                            iconViewStyleDisabled: .smallHighlightMedium,
                                            textViewStyle: .actionMediumHighlightDarkest,
                                            textViewStyleDisabled: .actionMediumHighlightMedium,
                                            backgroundColor: .clear,
                                            backgroundColorDisabled: .clear,
                                            borderColor: .highlightDarkest,
                                            borderColorDisabled: .highlightMedium,
                                            borderWidth: .medium)
        
        public static let tertiary = Style(iconViewStyle: .smallHighlightDarkest,
                                           iconViewStyleDisabled: .smallHighlightMedium,
                                           textViewStyle: .actionMediumHighlightDarkest,
                                           textViewStyleDisabled: .actionMediumHighlightMedium,
                                           backgroundColor: .clear,
                                           backgroundColorDisabled: .clear,
                                           borderColor: nil,
                                           borderColorDisabled: nil,
                                           borderWidth: nil)
    }
    
    struct ButtonStyle: SwiftUI.ButtonStyle {
        let style: Style
        @Environment(\.isEnabled) var isEnabled
        
        public func makeBody(configuration: Configuration) -> some View {
            configuration
                .label
                .overlay {
                    if configuration.isPressed {
                        Color.lightGrayDarkest10.value
                    }
                }
                .overlay {
                    if let borderWidth = style.borderWidth,
                       let borderColor = style.borderColor,
                       let borderColorDisabled = style.borderColorDisabled {
                        RoundedRectangle(cornerRadius: .init(borderRadius: .medium))
                            .stroke(isEnabled ? borderColor.value : borderColorDisabled.value,
                                    lineWidth: borderWidth.value)
                    }
                }
                .background(isEnabled ? style.backgroundColor.value : style.backgroundColorDisabled.value)
                .cornerRadius(.init(borderRadius: .medium))
        }
    }
}

// MARK: - Preview
#Preview {
    NavigationView {
        List {
            Section("Primary") {
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           title: "Like!",
                           rightIcon: .arrowRight,
                           style: .primary) { }
                        .fixedSize()
                    Text("Left Icon, Title, Right Icon")
                }
                
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           title: "Like!",
                           style: .primary) { }
                        .fixedSize()
                    Text("Left Icon, Title")
                }
                
                HStack(spacing: 8) {
                    Button(title: "Like!",
                           rightIcon: .arrowRight,
                           style: .primary) { }
                        .fixedSize()
                    Text("Title, Right Icon")
                }
                
                HStack(spacing: 8) {
                    Button(title: "Like!",
                           style: .primary) { }
                        .fixedSize()
                    Text("Title")
                }
                
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           style: .primary) { }
                        .fixedSize()
                    Text("Icon")
                }
                
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           title: "Like!",
                           rightIcon: .arrowRight,
                           style: .primary) { }
                        .fixedSize()
                        .disabled(true)
                    Text("Disabled")
                }
                
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           title: "Like!",
                           rightIcon: .arrowRight,
                           style: .primary) { }
                        .fixedSize(horizontal: false,
                                   vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                }
            }
            Section("Secondary") {
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           title: "Like!",
                           rightIcon: .arrowRight,
                           style: .secondary) { }
                        .fixedSize()
                    Text("Left Icon, Title, Right Icon")
                }
                
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           title: "Like!",
                           style: .secondary) { }
                        .fixedSize()
                    Text("Left Icon, Title")
                }
                
                HStack(spacing: 8) {
                    Button(title: "Like!",
                           rightIcon: .arrowRight,
                           style: .secondary) { }
                        .fixedSize()
                    Text("Title, Right Icon")
                }
                
                HStack(spacing: 8) {
                    Button(title: "Like!",
                           style: .secondary) { }
                        .fixedSize()
                    Text("Title")
                }
                
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           style: .secondary) { }
                        .fixedSize()
                    Text("Icon")
                }
                
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           title: "Like!",
                           rightIcon: .arrowRight,
                           style: .secondary) { }
                        .fixedSize()
                        .disabled(true)
                    Text("Disabled")
                }
                
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           title: "Like!",
                           rightIcon: .arrowRight,
                           style: .secondary) { }
                        .fixedSize(horizontal: false,
                                   vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                }
            }
            Section("Tertiary") {
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           title: "Like!",
                           rightIcon: .arrowRight,
                           style: .tertiary) { }
                        .fixedSize()
                    Text("Left Icon, Title, Right Icon")
                }
                
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           title: "Like!",
                           style: .tertiary) { }
                        .fixedSize()
                    Text("Left Icon, Title")
                }
                
                HStack(spacing: 8) {
                    Button(title: "Like!",
                           rightIcon: .arrowRight,
                           style: .tertiary) { }
                        .fixedSize()
                    Text("Title, Right Icon")
                }
                
                HStack(spacing: 8) {
                    Button(title: "Like!",
                           style: .tertiary) { }
                        .fixedSize()
                    Text("Title")
                }
                
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           style: .tertiary) { }
                        .fixedSize()
                    Text("Icon")
                }
                
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           title: "Like!",
                           rightIcon: .arrowRight,
                           style: .tertiary) { }
                        .fixedSize()
                        .disabled(true)
                    Text("Disabled")
                }
                
                HStack(spacing: 8) {
                    Button(leftIcon: .heartOutlined,
                           title: "Like!",
                           rightIcon: .arrowRight,
                           style: .tertiary) { }
                        .fixedSize(horizontal: false,
                                   vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                }
            }
        }
        .navigationTitle("Buttons")
    }
    .preferredColorScheme(.light)
}
