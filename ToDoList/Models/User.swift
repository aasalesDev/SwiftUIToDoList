//
//  User.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
