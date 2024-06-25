//
//  RegisterView.swift
//  TodoList
//
//  Created by Ben Haas on 5/30/24.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
