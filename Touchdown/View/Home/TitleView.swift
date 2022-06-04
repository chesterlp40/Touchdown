//
//  TitleView.swift
//  TitleView
//
//  Created by Ezequiel Rasgido on 24/09/2021.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPERTIES Section

    var title: String

    //MARK: - BODY Section
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)

            Spacer()
        } //: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

//MARK: - PREVIEW Section
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Hola Juan Carlos")
            .previewLayout(.device)
            .background(colorBackground)
    }
}
