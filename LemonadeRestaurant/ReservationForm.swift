
//  ReservationForm.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/15/25.
//
//
import SwiftUI

struct ReservationForm: View{
    @State var userName=""
    @State var guestCount = 1
    @State var allergyNotes=""
    @State var showSummary = false
    @State var reservationDate = Date()
    
    var body: some View {
        NavigationStack{
            Form{
                Section(header: Text("Reservation Details")){
                    TextField("Name:", text: $userName)
                    
                    if userName.isEmpty {
                        Text("Please enter your name")
                            .foregroundColor(.red)
                    }
                    
                    Stepper("Guest: \(guestCount)", value: $guestCount, in: 1...5)
                    
                    DatePicker("Date",selection:$reservationDate,displayedComponents:
                                [.date,.hourAndMinute])
                    TextField("Allergy Notes",text: $allergyNotes)
                    
                    Button("Confirm Reservation"){
                        if !userName.isEmpty{
                            showSummary=true
                        }
                    }
                    .disabled(userName.isEmpty)
                    .navigationDestination(isPresented:$showSummary){
                        ReservationSummaryView(name: $userName, guests:$guestCount)
                    }
                }
                
            }
            
        }
    }
    
}

#Preview {
    ReservationForm()
}
