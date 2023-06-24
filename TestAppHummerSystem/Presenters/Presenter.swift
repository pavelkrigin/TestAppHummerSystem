//
//  Presenter.swift
//  TestAppHummerSystem
//
//  Created by Pavel Krigin on 23.06.2023.
//

import Foundation
import UIKit

protocol MenuPresentationLogic {
    func getData()
    func numberOfRowsInSection() -> Int
    func dataForCell() -> [FoodModels.FoodViewModel]
    func uniqTypesOfFoodAmount() -> Int
    func uniqTypesOfFood() -> [String]
}

class Presenter: MenuPresentationLogic {
    private let dataSourse = APIDataSource()
    
    var food: [FoodModels.FoodViewModel] = []
    var viewController: MenuViewController?
    
    init(dataSourse: APIDataSource) {
        
        self.viewController = MenuViewController()
        viewController?.presenter = self
    }
    
    func getData() {
        
        dataSourse.request(completion: { result in
            for food in result {
                
                self.food.append(FoodModels.FoodViewModel(
                    image: UIImage(named: food.image) ?? UIImage(),
                    title: food.title,
                    description: food.description,
                    price: "от \(food.price) р",
                    type: FoodType(rawValue: food.type) ?? .pizza))
            }
        })
    }
    
    func numberOfRowsInSection() -> Int {
       return food.count
    }
    
    func dataForCell() -> [FoodModels.FoodViewModel] {
        return food
    }
    
    func uniqTypesOfFoodAmount() -> Int {
        food.unique { $0.type }.count
    }
    
    func uniqTypesOfFood() -> [String] {
        food.unique { $0.type }.map {$0.type.named}
    }
    
}

extension Array {
    func unique<T:Hashable>(by: ((Element) -> (T)))  -> [Element] {
        var set = Set<T>() //the unique list kept in a Set for fast retrieval
        var arrayOrdered = [Element]() //keeping the unique list of elements but ordered
        for value in self {
            if !set.contains(by(value)) {
                set.insert(by(value))
                arrayOrdered.append(value)
            }
        }

        return arrayOrdered
    }
}
