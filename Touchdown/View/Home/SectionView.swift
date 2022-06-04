//
//  SectionView.swift
//  SectionView
//
//  Created by Ezequiel Rasgido on 23/09/2021.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTIES Section

    @State var rotateClockwise: Bool

    //MARK: - BODY Section
    var body: some View {
        VStack(spacing: 0) {
            Spacer()

            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: self.rotateClockwise ? 90 : -90))

            Spacer()
        } //: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

//MARK: - PREVIEW Section
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.device)
            .padding()
            .background(colorBackground)
    }
}
