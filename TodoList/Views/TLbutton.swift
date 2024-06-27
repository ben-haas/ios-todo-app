//
//  TLbutton.swift
//  TodoList
//
//  Created by Ben Haas on 6/27/24.
//

import SwiftUI

struct TLbutton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TLbutton(title: "Title", background: .pink) {
        //Action
    }
}
