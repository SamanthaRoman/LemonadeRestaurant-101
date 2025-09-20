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
    ]
    
    
    // display text simple form
    
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
            .padding()
            // new way of doing list from menu items list.
            // then access each one with key work "item" in (we call menue itemj view) "menuItemView.
            // JUST LIKE A FOR-LOOP
            
            List(menuItems){ item in
                MenuItemView(itemFromP: item)
                
            }
            
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
