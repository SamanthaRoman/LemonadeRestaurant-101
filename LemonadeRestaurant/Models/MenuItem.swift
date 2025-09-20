//
//  MenuItem.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/20/25.
//

import Foundation

// this method is from swift that will auto generate a unique id.
// never reuse id, always move to next one.

// by using 

struct MenuItem: Identifiable {
    var id:UUID = UUID()    // data type that is a func - auto generated with this method
    var name: String
    var description: String
    var price: Double
}
