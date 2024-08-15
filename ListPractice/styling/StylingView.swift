//
//  StylingView.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-15.
//

import SwiftUI

struct StylingView: View {
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
            } footer: {
                Text("try to eat them regularly")
            }
            
            Section {
                
                    ForEach(unhealtyFoods) { food in
                        FoodRow(food: food)
                }
            } header: {
                Text("Unhealty Foods")
            } footer: {
                Text("you should try to avoid them and only eat them occacionally")
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
struct StylingView_Previews: PreviewProvider {
    static var previews: some View {
        StylingView().listStyle(.insetGrouped)
            .previewDisplayName("insetGrouped")
        
        StylingView().listStyle(.plain)
            .previewDisplayName("plain")
        
        StylingView().listStyle(.inset)
            .previewDisplayName("inset")
        
        StylingView().listStyle(.grouped)
            .previewDisplayName("grouped")
        
        StylingView().listStyle(.sidebar)
            .previewDisplayName("sidebar")
    }
}

//#Preview {
//    StylingView().listStyle(.insetGrouped)
//    .previewDisplayName("insetGrouped") }
//#Preview {
//    StylingView().listStyle(.plain)
//    .previewDisplayName("plain") }
//#Preview {
//    StylingView().listStyle(.inset)
//    .previewDisplayName("inset") }
//#Preview {
//    StylingView().listStyle(.grouped)
//    .previewDisplayName("grouped") }
//#Preview {
//    StylingView().listStyle(.sidebar)
//        .previewDisplayName("sidebar")
//}
