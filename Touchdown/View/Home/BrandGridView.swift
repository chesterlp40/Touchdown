//
//  BrandGridView.swift
//  BrandGridView
//
//  Created by Ezequiel Rasgido on 26/09/2021.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPERTIES Section

    //MARK: - BODY Section
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                } //: LOOP
            } //: GRID
            .frame(height: 200)
            .padding(15)
        } //: SCROLL
    }
}

//MARK: - PREVIEW Section
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.device)
            .background(colorBackground)
    }
}
