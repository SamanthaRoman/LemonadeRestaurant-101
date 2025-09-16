//
//  ContentView.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Image("littleLemonLogo")
                
                Image(systemName: "keyboard")
                    .imageScale(.large)
                    .foregroundStyle(.gray)
                
                Text("Hello Cohort 3")
                    .padding()
                
                NavigationLink(destination:AboutView()){
                    Text("About")
                        .foregroundStyle(.blue)
                }
            }
            .navigationTitle("Home")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
