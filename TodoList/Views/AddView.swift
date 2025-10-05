//
//  AddView.swift
//  TodoList
//
//  Created by user on 05/10/2025.
//

import SwiftUI

struct AddView: View {
    @State var  textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.secondarySystemFill))
                    .clipShape(.rect(cornerRadius: 20))
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 30)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(.rect(cornerRadius: 20))
                })
            }
            .padding(12)
        }
        .navigationTitle("Add an Item ✏️")
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
