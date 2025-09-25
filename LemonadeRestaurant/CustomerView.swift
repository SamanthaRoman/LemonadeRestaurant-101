//
//  CustomerView.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/24/25.
//

import SwiftUI

struct CustomerView: View {
    // array of customers
    let customers = [
        Customer(name: "Ane", email: "ane@google.com", isPremium: true),
            Customer(name: "John",email: "john@google.com",isPremium: false),
            Customer(name: "Eric",email: "eric@google.com",isPremium: true),
            Customer(name: "Sarah",email: "sarah@google.com",isPremium: false),
           
    ]
    
    // 1. declare the showpremium variable
    
    
    @State private var showPremium = false
    
    // 2. adapt the computed filtered
    
    var filteredCustomer: [Customer]{
        showPremium ? customers.filter(\.isPremium) : customers
    }
    
    var body: some View {
        VStack{
            Text("Custmer List")
            Toggle("Show only premium", isOn:$showPremium)
            List(filteredCustomer){
                customer in
                
                HStack{
                    Text(customer.name)
                    Spacer()
                    if customer.isPremium {
                        Image(systemName: "star.fill")
                            .imageScale(.small)
                            .foregroundStyle(.yellow)
                        Text(String(customer.isPremium))
                    }
                }
            }
        }
    }
}

#Preview {
    CustomerView()
}
