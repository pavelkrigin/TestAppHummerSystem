//
//  FilterCollectionViewCell.swift
//  TestAppHummerSystem
//
//  Created by Pavel Krigin on 24.06.2023.
//

import UIKit

class FilterCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var filterName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configuration()
    }

    func setupCell(name: String) {
        filterName.text = name
        
    }
    
    func configuration() {
        self.layer.borderWidth = 1
        self.layer.cornerRadius = self.frame.height / 2
    }
    
}
