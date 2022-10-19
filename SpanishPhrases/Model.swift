//
//  Model.swift
//  SpanishPhrases
//
//  Created by Richard Price on 14/10/2022.
//

import Foundation

struct Category: Identifiable {
    var id = UUID().uuidString
    var name: String
    var catNumber: Int
    var asset: String
}

var categories = [
        Category(name: "Animals", catNumber: 1, asset: "AnimalsResized"),
        Category(name: "Weather", catNumber: 2, asset: "AnimalsResized"),
        Category(name: "Sports", catNumber: 3, asset: "AnimalsResized"),
        Category(name: "Professional", catNumber: 4, asset: "AnimalsResized"),
]

