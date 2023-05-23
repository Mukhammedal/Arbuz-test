
//  Created by Mukhammedali on 21.05.2023.

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    @State private var productPressed = false
    var product: Product
    
    @State private var showSheet = false
    @State private var selectedDay = ""
    @State private var selectedPeriod = ""
    @State private var deliveryAddress = ""
    @State private var phoneNumber = ""
    @State private var productWeight = 0.0
    
    var totalPrice: Double {
        Double(product.price) * productWeight
    }
    
    var formattedPrice: String {
        String(format: "₸ %.2f", totalPrice)
    }
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("Price: \(formattedPrice)")
            }
            .onTapGesture {
                productPressed.toggle()
            }
            
            Spacer()
            
            Image(systemName: "cart")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                .onTapGesture {
                    cartManager.addToCart(product: product, quantity: 1, totalPrice: totalPrice)
                }
        }
        .sheet(isPresented: $productPressed, content: {
            DeliverySheetView(showSheet: $productPressed, selectedDay: $selectedDay, productWeight: $productWeight, selectedPeriod: $selectedPeriod, deliveryAddress: $deliveryAddress, phoneNumber: $phoneNumber, selectedProduct: product)
        })
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[2])
            .environmentObject(CartManager())
    }
}
