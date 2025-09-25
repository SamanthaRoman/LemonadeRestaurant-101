
//  ReservationForm.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/15/25.
//
//
import SwiftUI

struct ReservationForm: View{
    //variable section
    @State var userName: String = ""
    @State var reservationDate = Date()
    @State var guestCount: Int = 0
    @State var allergyNotes = ""
    @State var showSummary = false
    


    
    var body: some View {
        NavigationStack{
            Form{
                Section(header: Text("Reservation Details")){
                                    TextField("Insert your name", text:$userName)
                    
                    if userName.isEmpty {
                        Text("Please enter your name")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    
                    Stepper("Guest: \(guestCount)", value: $guestCount, in: 0...10)
                    if guestCount > 5 {
                        Text("For Large parties, please call to schedule")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    DatePicker("Date",selection:$reservationDate,displayedComponents:
                                [.date,.hourAndMinute])
                    TextField("Allergy Notes", text: $allergyNotes)
                    
                    Button("Confirm Reservation"){
                        if !userName.isEmpty{ // if not empty
                            showSummary=true
                        }
                    }
                    .disabled(userName.isEmpty)
                                        .navigationDestination(isPresented: $showSummary){
                                            ReservationSummaryView(
                                                name: $userName,
                                                reservationDate: $reservationDate,
                                                guests:$guestCount,
                                                allergies:$allergyNotes)
                    }
                }
                
            }
            
        }
        .navigationTitle("Book a table")
    }
    
}

#Preview {
    ReservationForm()
}
