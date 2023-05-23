//
//  Product.swift
//  SweaterShopApp
//
//  Created by Mukhammedali on 21.05.2023..
//

import Foundation
import UIKit

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var weight: Double
    var image: String
    var price: Int
    var instock: Bool
}

var productList = [Product(name: "Молоко Lactel", weight: 2, image: "lactel", price: 650, instock: false),
                   Product(name: "Kiwi", weight: 4, image: "kiwi", price: 1400, instock: true),
                   Product(name: "Полотенце Karina", weight: 11, image: "karina", price: 785, instock: true),
                   Product(name: "Компот Pikо", weight: 6, image: "piko", price: 665, instock: true),
                   Product(name: "Черешня", weight: 5, image: "cherry", price: 2990, instock: true),
                   Product(name: "Мясо цыпленка", weight: 9, image: "chicken", price: 2410, instock: true),
                   Product(name: "Печенья Конти", weight: 1, image: "conti", price: 970, instock: true),
                   Product(name: "Яйцо куринные", weight: 2, image: "eggs", price: 850, instock: true),
                   Product(name: "Лимон Аргентина", weight: 4, image: "lemon", price: 240, instock: true),
                   Product(name: "Грибы Le Вonta", weight: 8, image: "mash", price: 3250, instock: true),
                   Product(name: "Aвокадо Xасс", weight: 9, image: "avocado", price: 2197, instock: true),
                   Product(name: "Ложки", weight: 12, image: "spoons", price: 340, instock: true)
]

//]
