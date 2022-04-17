//
//  ItemModel.swift
//  TodoList
//
//  Created by Huseyn Abishov on 16.04.2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
