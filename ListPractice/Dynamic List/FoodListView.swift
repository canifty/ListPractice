//
//  FoodListView.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-14.
//

import SwiftUI

struct FoodListView: View {
    
    @State private var foods = Food.preview()
    
    var body: some View {
        NavigationView {
            /* bc food struct in food file is is identifaible list in the below
             has shortened from (foods, id: \.id) */
            List(foods) { food in
                HStack {
                    Text(food.icon)
                    Text(food.name)
                }
            }
            .toolbar {
                Button {
                    let newFood = Food(name: "New", icon: "\(foods.count)", isFavorite: false)
                    withAnimation{
                        foods.append(newFood)
                    }
                } label: {
                    Label("Add", systemImage: "plus")
                }
            }
        }
    }
}

#Preview {
    FoodListView()
}
