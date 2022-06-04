//
//  NavigationBarView.swift
//  NavigationBarView
//
//  Created by Ezequiel Rasgido on 23/09/2021.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES Section

    @State private var isAnimated = false

    //MARK: - BODY Section
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) //: BUTTON

            Spacer()

            LogoView()
                .opacity(self.isAnimated ? 1 : 0)
                .offset(x: 0, y: self.isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        self.isAnimated.toggle()
                    }
                })

            Spacer()

            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)

                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                } //: ZSTACK
            }) //: BUTTON
        } //: HSTACK
    }
}

//MARK: - PREVIEW Section
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.device)
            .padding()
    }
}
