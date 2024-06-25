//
//  LoginView.swift
//  TodoList
//
//  Created by Ben Haas on 5/30/24.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "ToDo List", subtitle: "git'r done", angle: 15, background: .pink)
                
                // Login
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button {
                        // attempt login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                    .padding()
                }
                .offset(y: -50)
                
                // Create Acct
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
