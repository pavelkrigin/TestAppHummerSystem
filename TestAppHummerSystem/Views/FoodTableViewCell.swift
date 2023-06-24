//
//  FoodTableViewCell.swift
//  TestAppHummerSystem
//
//  Created by Pavel Krigin on 24.06.2023.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var foodTitle: UILabel!
    
    @IBOutlet weak var descriptionFood: UILabel!
    
    @IBOutlet weak var priceButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
configuration()
        
    }
    
    func setupCell(model: FoodModels.FoodViewModel) {
        
        foodImage.image = model.image
        foodTitle.text = model.title
        descriptionFood.text = model.description
        priceButton.setTitle(model.price, for: .normal)
    }
    
    func configuration() {
        priceButton.tintColor = .red
        priceButton.layer.borderWidth = 1
        priceButton.layer.borderColor = UIColor.red.cgColor
        priceButton.layer.cornerRadius = 6
        priceButton.setTitleColor(.gray, for: .selected)
    }
    
}
