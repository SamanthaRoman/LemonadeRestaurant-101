import UIKit

// variable - var
// constants - let

var greeting = "Hello, playground"
print(greeting)

let day = "Wednesday"
print("Today is \(day)") // string interpolation

let dailyTeperature = 75
print("Today is \(day) and the temperature is \(dailyTeperature) degrees.")
 
var temperature = 80
print("The temperature in the morning is: \(temperature)")
temperature = 85
print("The temperature in the afternoon is \(temperature)")

// ----- Game Score -----
print("----- Game Score -----")
let levelScore = 10 //Int
var gameScore = 0

gameScore = gameScore + levelScore
//gameScore += levelScore
print("The game score is: \(gameScore)")

var levelBonusScore = 10.0 // Double
levelBonusScore = 20

print("The level bonus score is: \(levelBonusScore)")
gameScore += Int(levelBonusScore)
print("The game final score is \(gameScore)")

// Mini-challenge
/*
 Create a swift program that declares three variables to store your
 name, age and city.
 Then use print() and string interpolation to display a sentence instroducing yourself
 */
var name = "Peter"
var age = 18
var city = "London"

print("Hello my name is \(name) i am \(age) years old, and i live in \(city).")

// ----- Swift DataTypes -----
let dishName:String = "Pasta"
var price:Double = 9.99
var inStock:Bool = true // true-false
let qty:Int = 3
