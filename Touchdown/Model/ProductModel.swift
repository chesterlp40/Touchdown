//
//  ProductModel.swift
//  ProductModel
//
//  Created by Ezequiel Rasgido on 24/09/2021.
//

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Double
    let description: String
    let color: [Double]

    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }

    var formattedPrice: String { return "$\(String(format: "%.2f", price))" }
}
