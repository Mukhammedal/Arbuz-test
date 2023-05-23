//
//  CustomerButton.swift
//  SweaterShopApp
//
//  Created by Mukhammedali on 22.05.2023.
//

import SwiftUI

struct CustomerButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(systemName: "box.truck.badge.clock")
                .padding(.top, 5)

            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
        }
    }
}

struct CustomerButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomerButton(numberOfProducts: 1)
    }
}

