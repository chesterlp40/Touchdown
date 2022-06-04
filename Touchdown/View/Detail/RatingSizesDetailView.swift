//
//  RatingSizesDetailView.swift
//  RatingSizesDetailView
//
//  Created by Ezequiel Rasgido on 26/09/2021.
//

import SwiftUI

struct RatingSizesDetailView: View {
    //MARK: - PROPERTIES Section

    let sizes = ["XS", "S", "M", "L", "XL"]

    //MARK: - BODY Section
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            // RATINGS
            VStack(alignment: .leading, spacing: 3) {
                Text("Rating")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)

                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id:\.self) { item in
                        Button(action: {}) {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }
                    } //: LOOP
                } //: HSTACK
            } //: VSTACK

            Spacer()

            // SIZES
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)

                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id:\.self) { size in
                        Button(action: {}) {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        } //: BUTTON
                    } //: LOOP
                } //: HSTACK
            } //: VSTACK

        } //: HSTACK
    }
}

//MARK: - PREVIEW Section
struct RatingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailView()
            .previewLayout(.device)
            .padding()
    }
}
