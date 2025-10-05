//  NoItemsView.swift
//  TodoList
//
//  Created by user on 05/10/2025.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
   // let secondaryAccentColor = Color("secondaryAccentColor")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Click the Add button to create new item to your todo list")
                    .padding(.bottom, 20)
                NavigationLink(destination: AddView()) {
                    Text("Add ✚")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(animate ? Color.secondaryAccent : Color.accentColor)
                        .clipShape(.rect(cornerRadius: 20))
                }
                .padding(.horizontal, animate ? 0 : 10)
                .shadow(
                    color: animate ? Color.secondaryAccent.opacity(0.7) : Color.accentColor.opacity(0.7),
                    radius: animate ? 30 : 10,
                    x: 0,
                    y: animate ? 50 : 20)
                .scaleEffect(animate ? 1.1 : 1)
                .offset(y: animate ? -7 : 0)
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationStack {
        NoItemsView()
            .navigationTitle("Title")
    }
}
