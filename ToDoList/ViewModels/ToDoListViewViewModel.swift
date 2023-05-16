//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import Foundation
import FirebaseFirestore

///ViewModel for List of Items View
///Primary Tab
class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView: Bool = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let database = Firestore.firestore()
        
        database.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
