//
//  SectionFoodList.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-15.
//

import SwiftUI

struct SectionFoodList: View {
    @State private var foods = Food.preview()
    @State private var unhealtyFoods = [Food(name: "Pizza", icon: "🍕", isFavorite: false), Food(name: "Burger", icon: "🍔", isFavorite: false)]
    
    var body: some View {
        List {
            
            Section {
                ForEach(foods) { food in
                    FoodRow(food: food)
                }
            } header: {
                Text("Healty Foods")
            } .headerProminence(.increased)
            
            Section {
                DisclosureGroup("Unhealty Foods") {
                    ForEach(unhealtyFoods) { food in
                        FoodRow(food: food)
                    }
                }
            } header: {
                Text("Unhealty Foods")
            }
            
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

#Preview {
    SectionFoodList()
}
