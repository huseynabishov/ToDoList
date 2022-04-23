//
//  ListView.swift
//  TodoList
//
//  Created by Huseyn Abishov on 16.04.2022.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewmodel: ListViewModel
    
    var body: some View {
        List{
            ForEach(listViewmodel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
//                            ITEM PROBLEM
//                            ListViewModel(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewmodel.deleteItem)
            .onMove(perform: listViewmodel.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(),
                            trailing:
                                NavigationLink("Add", destination: AddView())
        )
        
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ListView()
        }
        .environmentObject(ListViewModel())
    }
}


