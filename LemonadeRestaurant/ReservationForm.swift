//
//  ReservationForm.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/15/25.
//

import SwiftUI

struct ReservationForm: View {
    @State var userName=""
    @State var guestCount = 1
    @State var allergyNotes=""
    @State var showSumary = false
    @State var reservationDate = Date()
    
    var body: some View {
        NavigationStack{
            Form{
                Section(content: Text("Reservation Details")){
                    TextField("Name:", text: $userName)
                    
                    if userName.isEmpty {
                        Text("Please enter your name")
                            .foregroundColor(.red)
                    }
                    
                    Stepper("Guest: \(guestCount)", value: $guestCount, in: 1...5)
                    
                    DatePicker("Date",selection:$reservationDate,displayedComponents:
                                [.date.hourAndMinure])
                    TextField("Allergy Notes",text: $allergyNotes)
                    
                    Button("Confirm Reservation"){
                        if !userName.isEmpty{
                            showSummary=true
                        }
                    }
                    .disabled(userName.isEmpty)
                    .navigationDestintation(isPresented:$showSummary){
                        ReservationSummaryView(name: $userName, guest:$guestCount)
                    }
                }
                
            }
            
        }
    }
    
}

#Preview {
    ReservationForm()
}
