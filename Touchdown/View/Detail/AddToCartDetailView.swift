//
//  AddToCartDetailView.swift
//  AddToCartDetailView
//
//  Created by Ezequiel Rasgido on 27/09/2021.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - PROPERTIES Section

    @EnvironmentObject var shop: Shop

    //MARK: - BODY Section
    var body: some View {
        Button(
            action: {
                feedback.impactOccurred()
            } //: ACTION
        ) {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        } //: BUTTON
        .padding(15)
        .background(
            Color(
                red: self.shop.selectedProduct?.red ?? sampleProduct.red,
                green: self.shop.selectedProduct?.green ?? sampleProduct.green,
                blue: self.shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

//MARK: - PREVIEW Section
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.device)
            .padding()
    }
}
