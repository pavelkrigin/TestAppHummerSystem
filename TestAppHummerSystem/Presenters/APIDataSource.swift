//
//  APIDataSource.swift
//  TestAppHummerSystem
//
//  Created by Pavel Krigin on 23.06.2023.
//

import Foundation
import UIKit

class APIDataSource {
    
    // MARK: - Properties

//    let urlString = "https://my-json-server.typicode.com/Spote777/PizzaResources/data"
    
    // MARK: - Method
    
    func request(completion: @escaping ([FoodModels.FoodApiModel])-> Void) {
//        let url = URL(string: urlString)
//        let session = URLSession.shared
//        session.dataTask(with: url!) { (data, response, error) in
//            DispatchQueue.main.async {
//                if let error = error {
//                    print("Some error")
//                    completion(.failure(error))
//                    return
//                }
//                guard let data = data else { return }
//                completion(.success(data))
//            }
//        }.resume()
        
        completion([
            FoodModels.FoodApiModel(image: "Pizza", title: "Баварские колбаски", description: "Баварски колбаски,ветчина, пикантная пепперони, острая чоризо, моцарелла, томатный соус", price: "320", type: "p"),
            FoodModels.FoodApiModel(image: "Pizza", title: "Баварские колбаски", description: "Баварски колбаски,ветчина, пикантная пепперони, острая чоризо, моцарелла, томатный соус", price: "320", type: "p"),
            FoodModels.FoodApiModel(image: "Pizza", title: "Баварские колбаски", description: "Баварски колбаски,ветчина, пикантная пепперони, острая чоризо, моцарелла, томатный соус", price: "320", type: "p"),
            FoodModels.FoodApiModel(image: "Pizza", title: "Баварские колбаски", description: "Баварски колбаски,ветчина, пикантная пепперони, острая чоризо, моцарелла, томатный соус", price: "320", type: "p"),
            FoodModels.FoodApiModel(image: "Pizza", title: "Баварские колбаски", description: "Баварски колбаски,ветчина, пикантная пепперони, острая чоризо, моцарелла, томатный соус", price: "320", type: "p"),
            FoodModels.FoodApiModel(image: "MilkShake", title: "Молочный коктейль", description: "Шоколадный, Ванильный, Клубничный, Кокосовый, Тропический", price: "320", type: "b"),
            FoodModels.FoodApiModel(image: "MilkShake", title: "Молочный коктейль", description: "Шоколадный, Ванильный, Клубничный, Кокосовый, Тропический", price: "320", type: "b"),
            FoodModels.FoodApiModel(image: "MilkShake", title: "Молочный коктейль", description: "Шоколадный, Ванильный, Клубничный, Кокосовый, Тропический", price: "320", type: "b"),
        ])
    }
}
