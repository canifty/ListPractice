//
//  FoodRow.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-15.
//

import SwiftUI

struct FoodRow: View {
    let food: Food
    var body: some View {
        HStack {
            Text(food.icon)
            Text(food.name)
            Spacer()
            Image(systemName: food.isFavorite ? "heart.fill" : "heart")
        }
    }
}

#Preview {
    FoodRow(food: Food(name: "Pizza", icon: "🍕", isFavorite: false))
        .padding()
}
