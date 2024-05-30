//
//  TodoListApp.swift
//  TodoList
//
//  Created by Ben Haas on 5/30/24.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
