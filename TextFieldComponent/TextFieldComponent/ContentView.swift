//  /*
//
//  Project: TextFieldComponent
//  File: TextFieldComponent.swift
//  Created by: Elaidzha Shchukin
//  Date: on 03.04.2023.
//
//  Status / Decoreted
//
//  */

import SwiftUI

// MARK: TextFieldCm |

struct TextFieldComponent: View {
    
    @State private var text: String = ""
    @State private var text1: String = ""
    @State private var text2: String = ""
    
    var body: some View {
        
        VStack(spacing: 24) {
            Group {
                
                FloatingBorderLabelTextField(placholder: "Ваша Имя", text: self.$text)
                FloatingBorderLabelTextField(placholder: "Телефон", text: self.$text1)
                FloatingBorderLabelTextField(placholder: "Пароль", text: self.$text2)
                
            }
        }
        .padding()
       .frame(height: 54)
    }
}

struct TextFieldComponent_Preview: PreviewProvider {
    static var previews: some View {
        self.devices {
            TextFieldComponent()
        }
    }
}


