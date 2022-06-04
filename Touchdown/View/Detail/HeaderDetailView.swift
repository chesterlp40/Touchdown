//
//  HeaderDetailView.swift
//  HeaderDetailView
//
//  Created by Ezequiel Rasgido on 26/09/2021.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PROPERTIES Section

    @EnvironmentObject var shop: Shop

    //MARK: - BODY Section
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")

            Text(self.shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VSTACK
        .foregroundColor(.white)
    }
}

//MARK: - PREVIEW Section
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.device)
            .padding()
            .background(Color.gray)
    }
}
