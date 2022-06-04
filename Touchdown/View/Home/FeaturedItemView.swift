//
//  FeaturedItemView.swift
//  FeaturedItemView
//
//  Created by Ezequiel Rasgido on 23/09/2021.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTIES Section

    let player: Player

    //MARK: - BODY Section
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: - PREVIEW Section
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.device)
            .padding()
            .background(colorBackground)
    }
}
