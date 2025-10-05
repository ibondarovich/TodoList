//
//  ListRowView.swift
//  TodoList
//
//  Created by user on 05/10/2025.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .gray)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    var item1 : ItemModel = ItemModel(title: "First item", isCompleted: false)
    var item2 : ItemModel = ItemModel(title: "Second item", isCompleted: true)
    
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
}
