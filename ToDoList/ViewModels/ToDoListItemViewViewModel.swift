//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

///View for each item in the To Do List Items
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: TodoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let database = Firestore.firestore()
        database.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
