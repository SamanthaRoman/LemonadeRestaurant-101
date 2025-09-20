//
//  DessertItem.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/20/25.
//

import Foundation

struct DessertItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var price: Double
}
