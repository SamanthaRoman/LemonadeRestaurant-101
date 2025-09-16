//
//  LoginView.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/15/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn:Bool
    @Binding var userName:String
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                TextField("Enter your name", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Log In"){
                    print("Trying to log in")
                    
                    if userName == "Leo" {
                        isLoggedIn = true
                    }
                }
            }
            .navigationTitle("Login")
        }
    }
}

//#Preview {
//    LoginView()
//}
