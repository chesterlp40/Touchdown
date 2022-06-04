//
//  CategoryItemView.swift
//  CategoryItemView
//
//  Created by Ezequiel Rasgido on 23/09/2021.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - PROPERTIES Section

    let category: Category

    //MARK: - BODY Section
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)

                Text(category.name)
                    .fontWeight(.light)
                    .foregroundColor(.gray)

                Spacer()
            } //: HSTACK
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 2)
            )
        }) //: BUTTON
    }
}

//MARK: - PREVIEW Section
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.device)
            .padding()
            .background(colorBackground)
    }
}
