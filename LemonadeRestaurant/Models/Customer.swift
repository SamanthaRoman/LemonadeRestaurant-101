//
//  Customer.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/24/25.
//

import Foundation

// create structure for the customer

struct Customer: Identifiable{
    let id = UUID()
    var name: String
    var email: String
    var isPremium: Bool
}
