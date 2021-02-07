//
//  OnboardingCollectionViewCell.swift
//  food app
//
//  Created by Temitope on 07/02/2021.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    static let identifier = String("OnboardingCollectionViewCell")
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    
    func setup(_ slide: OnboardingSlide) {
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
    }
}

