//
//  MenuItemView.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/20/25.
//

import SwiftUI

struct MenuItemView: View {
    
    let itemFromP: MenuItem
    
    var body: some View {
        // first HStack - 
        HStack() {
            VStack(alignment: .leading) {
                // specify what you want to render
                Text(itemFromP.name)
                    .font(.headline)
                // display the description in a smaller font
                Text(itemFromP.description).font(.subheadline)
                // to show price as a string you need to use string function
                Text(String(format:"%.2f", itemFromP.price))
                    .foregroundColor(Color.secondary)
            }
            
            Spacer()
            
            // if statement
            
            if itemFromP.price > 10 {
                
                
            }
            
        }
    }
}

//#Preview {
//    MenuItemView()
//}
