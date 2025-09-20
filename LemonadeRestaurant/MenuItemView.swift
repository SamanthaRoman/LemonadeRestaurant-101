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
        // first HStack
        HStack() {
            VStack(alignment: .leading) {
                // specify what you want to render
                Text(itemFromP.name)
                    .font(.headline)
                // to show price as a string you need to use string function
                Text(String(itemFromP.price))
                    .foregroundColor(Color.secondary)
                
            }
            
            Spacer()
            
            // if statement
            
            if itemFromP.price > 10 {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("Premium")
                        .font(.caption)
                }
                .font(.caption)
                .foregroundStyle(.orange)
                .padding(6)
                .background(.orange.opacity(0.1))
                .cornerRadius(6)
                
            }
            
        }
    }
}

//#Preview {
//    MenuItemView()
//}
