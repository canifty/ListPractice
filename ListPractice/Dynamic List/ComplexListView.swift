//
//  ComplexListView.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-14.
//

import SwiftUI

struct ComplexListView: View {
    
    @State private var foods = Food.preview()
    @State private var unhealtyFoods = [Food(name: "Pizza", icon: "🍕", isFavorite: false), Food(name: "Burger", icon: "🍔", isFavorite: false)]
    
    var body: some View {
        List {
            ForEach(foods) { food in
                Text(food.name)
            }
            ForEach(unhealtyFoods) { food in
                /*@START_MENU_TOKEN@*/Text(food.name)/*@END_MENU_TOKEN@*/
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
    ComplexListView()
}
