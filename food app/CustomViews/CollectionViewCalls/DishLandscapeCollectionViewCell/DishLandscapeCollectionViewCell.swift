//
//  DishLandscapeCollectionViewCell.swift
//  food app
//
//  Created by Temitope on 16/07/2021.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: DishLandscapeCollectionViewCell.self)

    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    
    func setup(dish: Dish){
        titleLbl.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLbl.text = dish.formattedCalories
        descriptionLbl.text = dish.description
    }
}
