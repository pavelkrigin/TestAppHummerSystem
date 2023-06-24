//
//  Model.swift
//  TestAppHummerSystem
//
//  Created by Pavel Krigin on 23.06.2023.
//

import Foundation
import UIKit

enum FoodType: String {
    
    case pizza = "p"
    case combo = "c"
    case deserts = "d"
    case beverages = "b"
    
    var named: String {
        switch self {
        case .combo: return "комбо"
        case .pizza: return "пицца"
        case .deserts: return "десерты"
        case .beverages: return "напитки"
        }
    }
    
}

enum FoodModels {
    struct FoodApiModel {
        var image: String
        var title: String
        var description: String
        var price: String
        var type: String // p - pizza, c - combo, d - deserts, b - beverages
    }
    
    struct FoodViewModel {
        var image: UIImage
        var title: String
        var description: String
        var price: String
        var type: FoodType
    }
}
