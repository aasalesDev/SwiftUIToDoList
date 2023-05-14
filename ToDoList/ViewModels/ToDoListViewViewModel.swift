//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Anderson Sales on 01/05/23.
//

import Foundation

///ViewModel for List of Items View
///Primary Tab
class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView: Bool = false
    
    init() {}
}
