//
//  DeliverySheetView.swift
//  SweaterShopApp
//
//  Created by Mukhammedali on 23.05.2023.
//

import SwiftUI

struct DeliverySheetView: View {
    @Binding var showSheet: Bool
    @Binding var selectedDay: String
    @Binding var productWeight: Double
    @Binding var selectedPeriod: String
    @Binding var deliveryAddress: String
    @Binding var phoneNumber: String
    
    let selectedProduct: Product
    
    var formattedWeight: String {
        String(format: "%.1f", productWeight)
    }
    
    var totalPrice: Double {
        Double(selectedProduct.price) * productWeight
    }
    
    var formattedPrice: String {
        String(format: "₸ %.2f", totalPrice)
    }
    
    let daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    let deliveryPeriods = ["Morning", "Afternoon", "Evening"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Delivery Details")) {
                    Text("Product: \(selectedProduct.name)")
                    
                    Picker("Day of the Week", selection: $selectedDay) {
                        ForEach(daysOfWeek, id: \.self) { day in
                            Text(day)
                        }
                    }
                    
                    Picker("Delivery Period", selection: $selectedPeriod) {
                        ForEach(deliveryPeriods, id: \.self) { period in
                            Text(period)
                        }
                    }
                    
                    Stepper("Weight: \(formattedWeight) kg", value: $productWeight, in: 0...10, step: 0.1)
                    
                    TextField("Delivery Address", text: $deliveryAddress)
                    TextField("Phone Number", text: $phoneNumber)
                        .keyboardType(.phonePad)
                }
                
                Section {
                    Text("Price: \(formattedPrice)")
                    
                    Button(action: {

                        
                        showSheet = false
                    }) {
                        Text("Confirm Delivery")
                            .foregroundColor(.blue)
                    }
                }
            }
            .navigationTitle(Text("Delivery Details"))
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        showSheet = false
                    }
                }
            }
        }
    }
}

