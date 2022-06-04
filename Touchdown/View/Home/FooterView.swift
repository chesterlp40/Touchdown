//
//  FooterView.swift
//  FooterView
//
//  Created by Ezequiel Rasgido on 23/09/2021.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Text("We offer most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)

            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)

            Text("Copyright © Ezequiel Rasgido\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } //: VSTACK
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.device)
            .background(colorBackground)
    }
}
