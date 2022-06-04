//
//  Shop.swift
//  Shop
//
//  Created by Ezequiel Rasgido on 27/09/2021.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct = false
    @Published var selectedProduct: Product? = nil
}
