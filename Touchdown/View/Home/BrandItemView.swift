//
//  BrandItemView.swift
//  BrandItemView
//
//  Created by Ezequiel Rasgido on 26/09/2021.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPERTIES Section

    let brand: Brand

    //MARK: - BODY Section
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

//MARK: - PREVIEW Section
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.device)
            .padding()
            .background(colorBackground)
    }
}
