//
//  CategoryGridView.swift
//  CategoryGridView
//
//  Created by Ezequiel Rasgido on 23/09/2021.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - PROPERTIES Section

    //MARK: - BODY Section
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            LazyHGrid(
                rows: gridLayout,
                alignment: .center,
                spacing: columnSpacing,
                pinnedViews: []
            ) {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                            // FIJARSE ESTE CASO...
                            .frame(minWidth: 200, maxWidth: 200)
                    } //: LOOP
                }
            } //: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } //: SCROLL
    }
}

//MARK: - PREVIEW Section
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.device)
            .padding()
            .background(colorBackground)
    }
}
