//
//  ItemModel.swift
//  TodoList
//
//  Created by user on 05/10/2025.
//

import Foundation

struct ItemModel: Identifiable {
    var id: String = UUID().uuidString
    
    let title: String
    let isCompleted: Bool
}
