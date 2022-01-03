//
//  TextFieldClearButton.swift
//  TodoApp
//
//  Created by Johan Guse on 31/12/21.
//

import SwiftUI

struct TextFieldClearButton: ViewModifier {
    @Binding var text: String
    
    func body(content: Content) -> some View {
        HStack {
            content
            
            Button(
                action: { self.text = "" },
                label: {
                    Image(systemName: "delete.left")
                        .foregroundColor(Color(UIColor.opaqueSeparator))
                }
            )
        }
    }
}
