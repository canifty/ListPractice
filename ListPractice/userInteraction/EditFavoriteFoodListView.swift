//
//  EditFavoriteFoodListView.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-15.
//

import SwiftUI

struct EditFavoriteFoodListView: View {
    @State private var foods = Food.preview()
    @State private var selectedFoodsIds: Set<UUID> = []
    
    var body: some View {
        NavigationView {
        List(foods, selection: $selectedFoodsIds) { food in
            FoodRow(food: food)
        }
        .navigationTitle("Foods")
        .toolbar {
            EditButton()
            }
        .safeAreaInset(edge: .bottom, spacing: 10) {
            if selectedFoodsIds.count > 0 {
                Button {
                    for id in selectedFoodsIds {
                        if let index = foods.firstIndex(where: { $0.id == id }) {
                            foods[index].isFavorite = true
                        }
                    }
                } label: {
                    Text("mark as favorite")
                }
                .frame(height: 44)
                .frame(maxWidth: .infinity)
                .background(.background)
            }
        }
        }
    }
}

#Preview {
    EditFavoriteFoodListView()
}
