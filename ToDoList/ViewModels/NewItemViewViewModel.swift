//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
        
    @Published var title: String = ""
    @Published var dueDate: Date = Date()
    @Published var showAlert: Bool = false
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else { return false}
        guard dueDate >= Date().addingTimeInterval(-864000) else { return false }
        return true
    }
    
    init() {
    }
    
    func save() {
        
    }
    
}
