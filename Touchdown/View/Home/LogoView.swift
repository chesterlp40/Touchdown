//
//  LogoView.swift
//  LogoView
//
//  Created by Ezequiel Rasgido on 23/09/2021.
//

import SwiftUI

struct LogoView: View {
    //MARK: - PROPERTIES Section

    //MARK: - BODY Section
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)

            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)

            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        } //: HSTACK
    }
}

//MARK: - PREVIEW Section
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.device)
            .padding()
    }
}
