//
//  SingleSelectionListView.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-15.
//

import SwiftUI

struct SingleSelectionListView: View {
    
    @State private var healtyFood = Food.preview()
    @State private var selectedFoodId: UUID? = nil
    
    var body: some View {
        List(healtyFood, selection: $selectedFoodId) { food in
            FoodRow(food: food)
                .listRowBackground(selectedFoodId == food.id ?
                                   Color.green: Color(.tertiarySystemBackground))
        }
    }
}

#Preview {
    SingleSelectionListView()
}
