//
//  ProductDetailView.swift
//  ProductDetailView
//
//  Created by Ezequiel Rasgido on 26/09/2021.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPERTIES Section

    @EnvironmentObject var shop: Shop

    //MARK: - BODY Section
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            // HEADER
            HeaderDetailView()
                .padding(.horizontal)

            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)

            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0) {
                // RATINGS + SIZES
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)

                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: true) {
                    Text(self.shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } //: SCROLL

                // QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)

                // ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
            } //: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )

        } //: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: self.shop.selectedProduct?.red ?? sampleProduct.red,
                green: self.shop.selectedProduct?.green ?? sampleProduct.green,
                blue: self.shop.selectedProduct?.blue ?? sampleProduct.blue
            )
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}

//MARK: - PREVIEW Section
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
