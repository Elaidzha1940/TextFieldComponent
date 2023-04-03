//  /*
//
//  Project: TextFieldComponent
//  File: FloatingLabelTextField.swift
//  Created by: Elaidzha Shchukin
//  Date: 03.04.2023
//
//  Status / Decoreted
//
//  */

import SwiftUI

// MARK: FloatingLabelTextFieldCm |

struct  FloatingLabelTextField: View {
    
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            Text(placeholder)
                .foregroundColor(.gray)
                .offset(y: self.text.isEmpty ? 0 : -25)
                .scaleEffect(self.text.isEmpty ? 1 : 0.9, anchor: .leading)
                .font(.system(self.text.isEmpty ? .title2 : .title3, design: .rounded))
            
            TextField("", text: self.$text)
                .foregroundColor(.gray)
        }
        .padding(.top, self.text.isEmpty ? 0 : 18)
    //.animation(.default)
        .padding()
        .background(
        RoundedRectangle(cornerRadius: 13)
            .stroke(text.isEmpty ? .pink.opacity(0.5) : .pink, lineWidth: 1)
        )
    }
}


struct FloatingLabelTextField_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FloatingLabelTextField(placeholder: "Ваша Имя", text: .constant(""))
            FloatingLabelTextField(placeholder: "Телефон", text: .constant(""))
            FloatingLabelTextField(placeholder: "Пароль", text: .constant(""))
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

