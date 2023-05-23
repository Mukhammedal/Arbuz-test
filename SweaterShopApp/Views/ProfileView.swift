//
//  ProfileView.swift
//  SweaterShopApp
//
//  Created by Mukhammedali on 22.05.2023.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var profileManager: ProfileManager
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                Text("Abzhan Mukhammedali")
                Text("Almaty Kazakhstan")
                Text("Subscription expiration: May 29, 2023")
                Text("Ordered products")
            }
            .padding()
        }
    }
}
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
                .environmentObject(ProfileManager())
        }
    }
    
