//
//  DishDetailViewController.swift
//  food app
//
//  Created by Temitope on 17/07/2021.
//

import UIKit

class DishDetailViewController: UIViewController {

    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var dish : Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        populateView()
        // Do any additional setup after loading the view.
    }
    
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        caloriesLbl.text = dish.formattedCalories
        descriptionLbl.text = dish.description
    }
    
    @IBAction func placeOrderButton(_ sender: UIButton) {
        
    }
    
}
