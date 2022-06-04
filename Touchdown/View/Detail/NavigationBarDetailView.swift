//
//  NavigationBarDetailView.swift
//  NavigationBarDetailView
//
//  Created by Ezequiel Rasgido on 26/09/2021.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: - PROPERTIES Section

    @EnvironmentObject var shop: Shop

    //MARK: - BODY Section
    var body: some View {
        HStack {
            Button(
                action: {
                    withAnimation(.easeIn) {
                        feedback.impactOccurred()
                        self.shop.selectedProduct = nil
                        self.shop.showingProduct.toggle()
                    }
                } //: ACTION
            ) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            } //: BUTTON

            Spacer()

            Button(action: {}) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        } //: HSTACK
    }
}

//MARK: - PREVIEW Section
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.device)
            .padding()
            .background(Color.gray)
    }
}
