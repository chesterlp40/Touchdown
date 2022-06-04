//
//  FeaturedTabView.swift
//  FeaturedTabView
//
//  Created by Ezequiel Rasgido on 23/09/2021.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: - PROPERTIES Section

    //MARK: - BODY Section
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

//MARK: - PREVIEW Section
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.device)
            .background(Color.gray)
    }
}
