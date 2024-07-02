//
//  ToDoListItemView.swift
//  TodoList
//
//  Created by Ben Haas on 5/30/24.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewViewModel()
    
    let items: TodoListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(items.title)
                    .bold()
                Text("\(Date(timeIntervalSince1970: items.dueDate).formatted(date: .abbreviated, time: .shortened))")
            }
            Spacer()
        }
    }
}

#Preview {
    ToDoListItemView(items: TodoListItem(id: "123", title: "Preview todo", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false))
}
