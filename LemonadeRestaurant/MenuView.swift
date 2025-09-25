//
//  MenuView.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/17/25.
//

import SwiftUI

struct MenuView: View {
    //create a dictionary dish:price (6 items)
    /*
     let menuItems = [
     "Pizza": 9.99,
     "Pasta": 7.99,
     "Salad": 5.99,
     "Burger": 8.99,
     "Soup": 6.99,
     "Steak": 7.49,
     ]
     */
    
    
    // create a list (Plural form of structure) using your structure (singular form) call the structure by name
    
    
    let menuItems = [
        MenuItem(name: "Pizza", description: "Cheesy and Hot", price: 9.0),
        MenuItem(name: "Steak", description: "Grilled to perfection", price: 15.0),
        MenuItem(name: "Pasta", description: "Spagetti", price: 6.0),
        MenuItem(name: "Soup", description: "Broccoli Cheeder Soup", price: 9.0),
        MenuItem(name: "Salad", description: "Garden Salad", price: 8.0),
        MenuItem(name: "Burger", description: "Beef patty", price: 10.0),
        MenuItem(name: "Chicken", description: "Juicey and Grilled", price: 12.0),
        MenuItem(name: "Fish", description: "Fresh from the sea", price: 12.0),
    ]
    
    
    // display text simple form
    
    @State private var showDesserts = false
    @State private var showPremium = false
    
    // state means "swift ui please store and watch this value. if it changes, please rebuild the ui.
    
    
    // COMPUTED PROPERTIES
    // does not store a value.
    // so what is it doing??
    // each access recomputes the value
    
    
    // SYNTAX for computed properties
    // similar to arrow functions in react.
    
    /*
     var propertyName: Type{
     return a calculated value
     }
     */
    // we are creating a new array using the data types... sorted alphabetically
    
    var sortedMenu: [MenuItem] {
        // from the array.sort it {by $0 spot.name < $1.name}
        menuItems.sorted {$0.name < $1.name}
    }
    
    // filter menu
    
    var filteredMenu: [MenuItem] {
        
        // showPremium is our state variable that is automatically set to zero.
        
        showPremium ? menuItems.filter{$0.price > 10} : menuItems
    }
    
    // display the prices. only one double not array
    // displaying the average of all the menu
    var averagePrice: Double {
        let total = menuItems.map {$0.price}.reduce(0, +)
        return total/Double(filteredMenu.count)
    }
    
    // now only premium price.
    
    func countItems(in items:[MenuItem])->(premium: Int, regular: Int){
        
        let premium = items.filter{$0.price > 10}.count
        let regular = items.count - premium
        
        return (premium, regular)
    }
    
    var body: some View {
        
        //VStack to organize virtically with HStack inside
        VStack{
            
            HStack{
                Image(systemName:"fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size:32))
                Text("Today's menu")
                    .font(.title)
            }
            
            Text("Avearge price: $\(averagePrice, specifier: "%.2f") ").font(.footnote).foregroundColor(.secondary)
            
            VStack{
                Toggle("Show an special text", isOn:$showPremium)
                Button("View Dessert") {
                    showDesserts.toggle()
                }
                .foregroundColor(.black)
                .padding()
                .background(Color.green.opacity(0.2))
                .cornerRadius(10)
            }
            
            .padding()
            // new way of doing list from menu items list.
            // then access each one with key work "item" in (we call menue itemj view) "menuItemView.
            // JUST LIKE A FOR-LOOP
            
            List(filteredMenu){ item in
                MenuItemView(itemFromP: item)
                
            }
            
            .sheet(isPresented: $showDesserts) {
                DessertView()
            }
            
            let summary = countItems(in: sortedMenu)
            
            Text("Premium: \(summary.premium) | Regular \(summary.regular) | Total $\(averagePrice,specifier: "%.2f")")
                .font(.subheadline)
                .padding()
                .background(Color.yellow.opacity(0.1))
                .cornerRadius(8)
            
            //List with dictionary is replaced by the above three lines of code.
//            List{
//                ForEach(menuItems.sorted(by: {$0.key < $1.key}), id: \.key){
//                    (name,price) in
//                    // First just displayed... make sure its working.
//                    //                    Text("\(name): \(price))")
//                    // Second lets make it beautiful!!
//                    HStack{
//                        VStack{
//                            Text(name)
//                                .font(.headline)
//                            Text("$\(price, specifier: "%.2f")")
//                                .foregroundColor(.secondary)
//                        }
//                        
//                        Spacer()
//                        if price > 10 {
//                            HStack{
//                                Image(systemName:"star.fill")
//                                    .foregroundColor(.yellow)
//                                Text("Premium")
//                                    .font(.caption)
//                            }
//                            .foregroundColor(.orange)
//                            .padding(6) // padding with color under is like you paint it
//                            .background(Color.orange.opacity(0.1))
//                            .cornerRadius(8)
//                            
//                        }
//                    }
//                }
//                    
//                
//            }
        }
        
    }
    
}

#Preview {
    MenuView()
}
