//
//  ItemModel.swift
//  TodoList
//
//  Created by Huseyn Abishov on 16.04.2022.
//

import Foundation

//Immutable Struct

struct ItemModel: Identifiable, Codable {
    var id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
