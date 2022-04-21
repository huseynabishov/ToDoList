//
//  ListViewModel.swift
//  TodoList
//
//  Created by Huseyn Abishov on 20.04.2022.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
        
    }
    func getItems() {
        let newItemss = [
            ItemModel(title: "This is the first title!", isCompleted: false),
            ItemModel(title: "This is the second!", isCompleted: true),
            ItemModel(title: "Third title!", isCompleted: false),

        ]
        items.append(contentsOf: newItems)
    }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from:IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        
        if items.firstIndex{ (existingItem) -> Bool in
            return existingItem.id == item.id
        } {
           
       }
        
        if let index = items.firstIndex(where: {$0.id == item.id})
    }
}
