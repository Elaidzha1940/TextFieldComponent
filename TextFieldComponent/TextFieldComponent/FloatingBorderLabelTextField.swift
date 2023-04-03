//  /*
//
//  Project: TextFieldComponent
//  File: FloatingBorderLabelTextField.swift
//  Created by: Elaidzha Shchukin
//  Date: on 03.04.2023.
//
//  Status / Decoreted
//
//  */
 
import SwiftUI

// MARK: FloatingBordedLabelTextFieldCm |

struct FloatingBorderLabelTextField: View {
    
    let placholder: String
    @Binding var text: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Text(placholder)
                .font(.system(self.text.isEmpty ? .title2 : .title3, design: .rounded))
                .foregroundColor(.elements(.Epink))
                .padding(.horizontal)
                .background(Color.white)
                .offset(y: self.text.isEmpty ? 0 : -38)
                .scaleEffect(self.text.isEmpty ? 1 : 0.8, anchor: .leading)
            
            TextField("", text: self.$text)
                .font(.system(.title2, design: .rounded))
                .foregroundColor(.elements(.Epink))
        }
       // .animation(.easeOut)
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(
        RoundedRectangle(cornerRadius: 8)
            .stroke(self.text.isEmpty ? .pink.opacity(0.3) : .pink, lineWidth: 1)
            .frame(height: 52)
        )
    }
}

struct FloatingBorderLabelTextField_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FloatingBorderLabelTextField(placholder: "Ваша Имя", text: .constant(""))
            FloatingBorderLabelTextField(placholder: "Телефон", text: .constant(""))
            FloatingBorderLabelTextField(placholder: "Пароль", text: .constant(""))
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
