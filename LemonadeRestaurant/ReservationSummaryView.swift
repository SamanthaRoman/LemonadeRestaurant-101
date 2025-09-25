//
//  ReservationSummaryView.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/15/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    @Binding var name: String
    @Binding var reservationDate: Date
    @Binding var guests: Int
    @Binding var allergies:String
    
    var body: some View {
        VStack(alignment:.leading,spacing:10){
            Text("Reservation Summary").font(.title)
            Text("Name: \(name)")
            Text("Reservation Date: \(reservationDate)")
            Text("Guests: \(guests)")
            Text("Allergies: \(allergies)")
        }
    }
}

// #Preview {
//    ReservationSummaryView()
//}
