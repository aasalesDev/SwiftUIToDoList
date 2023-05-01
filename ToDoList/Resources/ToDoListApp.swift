//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
