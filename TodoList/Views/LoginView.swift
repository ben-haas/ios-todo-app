//
//  LoginView.swift
//  TodoList
//
//  Created by Ben Haas on 5/30/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "ToDo List", subtitle: "git'r done", angle: 15, background: .pink)
                
                // Login
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLbutton(title: "Log In", background: .blue) {
                        viewModel.login()
                    }
                    
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
