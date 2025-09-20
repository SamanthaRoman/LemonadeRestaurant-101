import UIKit

/*
 
Strucs
 
 Custom data type that lets you group related values and behaviours together.
  
 It can contains:
  - Properties (variabales/constants)
  - Methods
  - Initializers
  - Computed properties
  - Protocols

 
 Syntax
 
 struct StrujctNHamje {
    var variablePropertyName: ElemjentType
    var variablePropertyName: ElementType
 }
 
 */

// Example 1
struct MenuItem {
    var name: String
    var prices: Double
    var description: String
}

// Example 2
struct Dish {
    var name: String
    var price: Double
    
    func isPremium() -> Bool { //this funhction is a method returning something.(a boolian)
        return price > 10
    }
}


//Example 3
struct Drink {
    var name: String
    var isCold: Bool
    var size: String
}


// using your structure (cookie cutter)
// create a constant
// provide arguments that it's expecting for it's properities.

let coffee = Drink(name: "Cappuccino", isCold: false, size: "Small")

print(coffee)

let tea = Drink(name: "Green Tea", isCold: false, size: "Medium")

print(tea)

let smoothie = Drink(name: "Strawberry Smoothie", isCold: true, size: "Large")

print(smoothie)

