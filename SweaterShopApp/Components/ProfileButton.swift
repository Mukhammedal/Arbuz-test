//
//  ProfileButton.swift
//  SweaterShopApp
//
//  Created by Mukhammedali on 22.05.2023.
//

import SwiftUI

struct ProfileButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "person.crop.circle")
                .padding(.top, 5)
        }
    }
}

struct ProfileButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileButton(numberOfProducts: 1)
    }
}
