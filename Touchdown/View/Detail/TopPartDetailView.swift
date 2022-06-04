//
//  TopPartDetailView.swift
//  TopPartDetailView
//
//  Created by Ezequiel Rasgido on 26/09/2021.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - PROPERTIES Section

    @EnvironmentObject var shop: Shop
    @State private var isAnimating = false

    //MARK: - BODY Section
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // PRICE
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)

                Text(self.shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            } //: VSTACK
            .offset(y: self.isAnimating ? -50 : -75)

            Spacer()

            // PHOTO
            Image(self.shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: self.isAnimating ? 0 : -35)

        } //: HSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                self.isAnimating.toggle()
            }
        }
    }
}

//MARK: - PREVIEW Section
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.device)
            .padding()
    }
}
