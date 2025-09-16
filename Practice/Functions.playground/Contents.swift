import UIKit

func greet(person: String) -> String {
    let greetings = "Hello " + person + "!"
    return greetings
}

// call the function

let message = greet(person: "Alice")
print(message)


func greet2(person:String, formally: Bool)->String{
    if formally{
        return "Greetings, " + person
    }else{
        return "Hi, " + person
    }
}

print(greet2(person:"Someone", formally:false))

func calculateTotal(price:Double, quantity: Int)->Double{
    return price * Double(quantity)
}

let total = calculateTotal(price: 9.99, quantity: 2)
print(total)

//mini-ex: Create a function deliveryTime(minutes:) that
//returns "Ready in X minutes:.

func deliveryTime(minutes:Int)->String{
    return "Ready in \(minutes) minutes."
}

print(deliveryTime(minutes:10))


// mini-ex: fx - calculate price plus tax show results

// tax can be a constant so we don't need to put it here.

func calculatePrice(price:Double, tax:Double)->String{
    var totalO = price + (price * tax)
    var totalF = String(format:"%.2f",totalO)
    return "$\(totalF)"
}

print(calculatePrice(price:100.00, tax:0.23))
