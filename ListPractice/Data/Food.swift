//
//  Food.swift
//  ListPractice
//
//  Created by Can Dindar on 2024-08-14.
//

import Foundation

struct Food: Identifiable, Hashable {
    var name: String
    var icon: String
    var isFavorite: Bool
    let id = UUID()
    
    static func preview() -> [Food] {
        [Food (name: "Apple", icon: "🍎", isFavorite: true),
         Food (name: "Banana", icon: "🍌", isFavorite: false),
         Food (name: "Cherry", icon: "🍒", isFavorite: false),
         Food (name: "Mango", icon: "🥭", isFavorite: true),
         Food (name: "Kiwi", icon: "🥝", isFavorite: false),
         Food (name: "Strawberry", icon: "🍓", isFavorite: false),
         Food (name: "Graps", icon: "🍇", isFavorite: true)
        ]
        
    }
}
