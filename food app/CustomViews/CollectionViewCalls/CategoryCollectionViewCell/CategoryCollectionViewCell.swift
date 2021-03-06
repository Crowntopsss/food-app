//
//  CategoryCollectionViewCell.swift
//  food app
//
//  Created by Temitope on 28/02/2021.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let indentifer = String(describing: CategoryCollectionViewCell.self)
    
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLbl: UILabel!
    
    func setup(category: DishCategory){
        categoryTitleLbl.text =  category.name
        categoryImageView.kf.setImage(with: category.image.asUrl)
    }
}

