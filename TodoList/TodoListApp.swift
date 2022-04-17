//
//  TodoListApp.swift
//  TodoList
//
//  Created by Huseyn Abishov on 16.04.2022.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 
 */

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
            ListView()
            }
        }
    }
}
