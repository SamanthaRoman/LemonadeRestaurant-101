//
//  MainView.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/15/25.
//

import SwiftUI

struct MainView: View {
    @State private var isLoggedIn = false
    @State private var userName = ""
    
    var body: some View {
        NavigationView {
            if isLoggedIn == true {
                VStack {
                    Text("Welcome, \(userName)")
                        .font(.title)
                    
                    NavigationLink("About Us", destination: AboutView())
                    
                    Button("Logout") {
                        print("Log out")
                        isLoggedIn = false
                        userName = ""
                    }
                }
            } else {
                LoginView(isLoggedIn: $isLoggedIn, userName:$userName)
            }
        }
    }
}

#Preview {
    MainView()
}
