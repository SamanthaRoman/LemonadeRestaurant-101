import UIKit

// Syntax and example

var dishes = ["Pizza", "Pasta", "Soup"]
print(dishes[0]) // Expecting to display "Pizza"
print(dishes.count) // Expecting to display 3


// Ex 2
// 1. create an array of prices.
// 2. total the prices
// 3. print the total for 2 dishes


var prices = [9.99, 10.50, 6.00] // 1
let total = prices[0] + prices[1] + prices[2] // 2.
print("Total for the three dishes: \(total)") // 3.


// mini ex: create an array with top 3 fav desserts and print them using a for-loop

var desserts = [ "Cheesecake", "Brownie", "Apple Pie"]
for dessert in desserts {
    print(dessert)
}

print("You have \(desserts.count) desserts.")

// Ex 3
// print all
//let calories = [0, 150, 80, 120]
//for calorie in calories {
//    print(calorie)
//}

// filter and only print "high calorie drinks ( > 100 )

let calories = [0, 150, 80, 120]
for calorie in calories {
    if calorie > 100 {
        print("\(calorie) High calorie drink")
    }
}


// mini-ex 3: Print the prices graterf than 10

let prices2 = [8.50, 12.00, 14.25, 6.75]
for price2 in prices2 {
    if price2 > 10 {
        print("Premium item: $\(price2)")
    }
}

// Ex 4

let meals = ["Salads", "Steak", "Burger"]

for meal in meals{
    if meal.contains("a"){
        print("Meal with an a: \(meal)")
    }
}

// mini-x 4: Filter & Print all < 10 items

let mealPrices = [8.99, 12.00, 10.45, 9.00]

for mealPrice in mealPrices {
    if mealPrice < 10 {
        print("Budget friendly meal: $\(String(format: "%.2f", mealPrice))")
    }
}


// mini-x5: count how many premium dishes are in an array using for in loop
// counting must assign the variable to start at 0. MUST BE OUTSIDE SCOPE of for-loop
var counter = 0
var totalPremium = 0
for premiumDish in mealPrices {
    if premiumDish > 10 {
        counter += 1
        totalPremium += Int(premiumDish)
    }
    
}

print( "You have \(counter) premium dishes")
print("You earn $\(totalPremium) with the premium dishes")


