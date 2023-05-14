//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

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
        guard canSave else { return }
        
        guard let userId = Auth.auth().currentUser?.uid else { return }
        
        let newId = UUID().uuidString
        let newItem = TodoListItem(id: newId, title: title, dueDate: dueDate.timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false)
        
        let database = Firestore.firestore()
        database.collection("users")
            .document(userId)
            .collection("todos")
            .document(newId)
            .setData(newItem.asDictionary())
    }
    
}
