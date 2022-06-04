//
//  QuantityFavouriteDetailView.swift
//  QuantityFavouriteDetailView
//
//  Created by Ezequiel Rasgido on 26/09/2021.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    //MARK: - PROPERTIES Section

    @State private var counter = 0
    // @State private var favourited = false

    //MARK: - BODY Section
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(
                action: {
                    if self.counter > 0 {
                        feedback.impactOccurred()
                        self.counter -= 1
                    }
                } //: ACTION
            ) {
                Image(systemName: "minus.circle")
            } //: BUTTON

            Text("\(self.counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)

            Button(
                action: {
                    if self.counter < 100 {
                        feedback.impactOccurred()
                        self.counter += 1
                    }
                } //: ACTION
            ) {
                Image(systemName: "plus.circle")
            } //: BUTTON

            Spacer()

            Button(
                action: {
                    feedback.impactOccurred()
                } //: ACTION
            ) {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            } //: BUTTON
        } //: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

//MARK: - PREVIEW Section
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.device)
            .padding()
    }
}
