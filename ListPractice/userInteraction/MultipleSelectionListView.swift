//
//  MultipleSelectionListView.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-15.
//

import SwiftUI

struct MultipleSelectionListView: View {
    @State private var healtyFood = Food.preview()
    @State private var selectedFoodsId: Set<UUID> = []
    
    var body: some View {
        NavigationView {
        List(healtyFood, selection: $selectedFoodsId) { food in
            FoodRow(food: food)
        }
        .toolbar {
            EditButton()
            }
        }
    }
}

#Preview {
    MultipleSelectionListView()
}
