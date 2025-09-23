import UIKit

//ARRAYS

//Example 1

let dishes = [ "Pizza", "Pasta", "Salad"]

print(dishes[1])// output: Pasta

//Example 2

var orders = [String]()
orders.append("Soup")
orders.append("Burger")
print(orders.count)

//challenge 1: Create an array with 4 desserts. Print the third dessert.

let desserts = ["Ice cream", "Cake", "Cheesecake", "Pie"]
print(desserts[2])

//Dictinaries are all key:value pairs

//Define a dictionjary with prices
//String=Dish Double=Price
let menuPrices: [String:Double] = ["Pizza":12.99, "Salad":15.00, "Pasta":11.99]

//Access value using a key
print(menuPrices["Pizza"]!) // Must use "!" to display value not optional

//Example 2 for key
//var stock = ["Burger":5.00, "Soup":4.00]

//Specify data type -> advantage to have more specific code
var stock: [String:Double] = ["Burger":5.00, "Soup":4.00]

//update value of soup
stock["Soup"] = 4.5

print(stock)

//Challange 2: Create a dictinary for 3 drinks and their prices. Print one price.

var drinks: [String:Double] = ["Coke":1.50, "Pepsi":1.49, "Sprite":1.25]
print(drinks["Coke"]!)

//add a new dictinary and print all values
var ingredients = ["Tomato":3, "Cheese":2, "Peperoni":10, "Mushrooms":8]

//for-in loop
for(qty,_) in ingredients {
    print(qty)
}

//for-in loop organized specific order by key
for(item,qty) in ingredients.sorted(by: {$0.key < $1.key}){
    print("\(item) : \(qty)")
}

//for-in loop organized by value
for(item,qty) in ingredients.sorted(by: {$0.value < $1.value}){
    print("\(item) : \(qty)")
}

//we will use the array on line 7 (dishes) to show all key's in the dictionary.
for dish in dishes{
    print("\(dish)")
}

//challenge 3: travel the dictionary
let meals = ["Burger": 7.99, "Salad": 5.99]

//rememnber to display both shoes.. ONLY MEAL
for (meal,_) in meals{
    print("\(meal)")
}

//remember to display both shoes.. both meal and price
for (meal,mealPrice) in meals{
    print("\(meal) : \(mealPrice)")
}

//challenge 4: travel the array
let prices2 = [8.0, 12.5, 7.0, 15.0]

for price2 in prices2{
    print("\(price2)")
}

//Filtering
// we will use the prices2 as premium (anything greater than 10)

let premium = prices2.filter{ $0 > 10}
print(premium)

// filter by a word

let menu3 = ["Veggie Salad", "Steak", "Fruit Bowl", "Chicken"]
f
//let veggie = menu3.filter{ $0.contains("Veggie") || $0.contains
