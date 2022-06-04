//
//  ContentView.swift
//  Touchdown
//
//  Created by Ezequiel Rasgido on 23/09/2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES Section

    @EnvironmentObject var shop: Shop

    //MARK: - BODY Section
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)

                    ScrollView(.vertical, showsIndicators: true, content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .frame(minHeight: 256)
                                .padding(.vertical, 10)

                            CategoryGridView()

                            TitleView(title: "Helmets")

                            LazyVGrid(columns: gridLayout, spacing: 15) {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                self.shop.selectedProduct = product
                                                self.shop.showingProduct.toggle()
                                            }
                                        }
                                } //: LOOP
                            } //: GRID
                            .padding(15)

                            TitleView(title: "Brands")

                            BrandGridView()

                            FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                    }) //: SCROLL
                } //: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: - PREVIEW Section
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
