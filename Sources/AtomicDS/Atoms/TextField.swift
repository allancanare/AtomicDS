//
//  TextField.swift
//
//
//  Created by Allan Canare on 2024/03/24.
//

import SwiftUI

// MARK: - View
public struct TextField: View {
    @Binding var input: String
    let placeholder: String
    let title: String?
    let message: String?
    let leftIcon: Icon?
    let isSecure: Bool
    let style: Style
    
    @State private var isContentVisible = true
    @Environment(\.isEnabled) private var isEnabled
    @FocusState private var isTextFieldFocused: Bool
    
    // MARK: Init
    init(input: Binding<String>,
         placeholder: String,
         title: String? = nil,
         message: String? = nil,
         leftIcon: Icon? = nil,
         isSecure: Bool = false,
         style: Style) {
        _input = input
        self.placeholder = placeholder
        self.title = title
        self.message = message
        self.leftIcon = leftIcon
        self.isSecure = isSecure
        self.style = style
    }
    
    // MARK: Body
    public var body: some View {
        VStack(alignment: .leading,
               spacing: .init(spacing: .small)) {
            if let title {
                TextView(title,
                         style: .headingExtraSmallDarkGrayDark)
            }
            textField
            if let message {
                TextView(message,
                         style: .bodyExtraSmallDarkGrayLightest)
            }
        }
    }
    
    var textField: some View {
        HStack(spacing: .init(spacing: .small)) {
            if let leftIcon {
                IconView(leftIcon,
                         style: .mediumDarkGrayLightest)
            }
            inputField
            if isSecure {
                IconView(isContentVisible ? .eyeInvisible : .eyeVisible,
                         style: .mediumDarkGrayLightest)
                .onTapGesture {
                    isContentVisible.toggle()
                }
            }
        }
        .padding(.vertical, .init(spacing: .medium))
        .padding(.horizontal, .init(spacing: .large))
        .frame(maxWidth: .infinity,
               minHeight: 48,
               maxHeight: 48,
               alignment: .leading)
        .if(!isEnabled) { view in
            view.background(Color.lightGrayLight.value)
        }
        .cornerRadius(.init(borderRadius: .medium))
        .addBorder(!isEnabled ? style.disabledBorderColor.value :
                    isTextFieldFocused ? style.typingBorderColor.value :
                    !input.isEmpty ? style.filledBorderColor.value : style.emptyBorderColor.value,
                   width: 1.5,
                   cornerRadius: .init(borderRadius: .medium))
    }
    
    var inputField: some View {
        Group {
            if isContentVisible {
                SwiftUI.TextField(placeholder,
                                  text: $input)
            } else {
                SwiftUI.SecureField(placeholder,
                                    text: $input)
            }
        }
        .frame(minHeight: 20)
        .font(Font.bodyMedium.value)
        .foregroundColor(Color.darkGrayDarkest.value)
        .focused($isTextFieldFocused)
    }
}

// MARK: - Style
public extension TextField {
    struct Style {
        let emptyBorderColor: Color
        let typingBorderColor: Color
        let filledBorderColor: Color
        let disabledBorderColor: Color
        
        static let normal = Style(emptyBorderColor: .lightGrayDarkest,
                                  typingBorderColor: .highlightDarkest,
                                  filledBorderColor: .lightGrayDarkest,
                                  disabledBorderColor: .lightGrayDarkest)
        
        static let error = Style(emptyBorderColor: .errorMedium,
                                 typingBorderColor: .errorMedium,
                                 filledBorderColor: .errorMedium,
                                 disabledBorderColor: .lightGrayDarkest)
    }
}

#Preview {
    @State var name = ""
    return NavigationView {
        List {
            TextField(input: $name,
                      placeholder: "user@domain.com",
                      title: "E-mail",
                      message: "Input your e-mail here",
                      leftIcon: .inbox,
                      isSecure: false,
                      style: .normal)
            
            TextField(input: $name,
                      placeholder: "",
                      title: "Password",
                      message: "Secure TextField",
                      leftIcon: nil,
                      isSecure: true,
                      style: .normal)
            
            TextField(input: $name,
                      placeholder: "John Doe",
                      title: "Name",
                      message: "TextField with error",
                      leftIcon: nil,
                      isSecure: false,
                      style: .error)
            TextField(input: $name,
                      placeholder: "Enter text here",
                      title: "Disabled",
                      style: .normal)
            .disabled(true)
        }
        .navigationTitle("TextField")
    }
    .preferredColorScheme(.light)
}
