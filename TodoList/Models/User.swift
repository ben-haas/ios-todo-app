//
//  User.swift
//  TodoList
//
//  Created by Ben Haas on 5/30/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
