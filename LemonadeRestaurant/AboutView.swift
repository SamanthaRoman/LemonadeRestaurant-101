//
//  AboutView.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/15/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("Welcome to Little Lemon!")
                .font(.title)
                .padding()
            
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
        }
        .navigationTitle("About Us")
    }
}

#Preview {
    AboutView()
}
