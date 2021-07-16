//
//  HomeViewController.swift
//  food app
//
//  Created by Temitope on 13/02/2021.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Africe Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africe Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africe Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africe Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africe Dish", image: "https://picsum.photos/100/200")
    
    ]
    
    var populars: [Dish] = [
        .init(id: "id1", name: "Bun rieu", description: "This is a best I ever tasted", image: "https://picsum.photos/100/200", calories: 25),
        .init(id: "id1", name: "Mi xao", description: "This is a best I ever tasted", image: "https://picsum.photos/100/200", calories: 43),
        .init(id: "id1", name: "Banh xeo", description: "This is a best I ever tasted", image: "https://picsum.photos/100/200", calories: 65)
    ]
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
  
    }
    private func registerCells(){
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.indentifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.indentifier)
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.indentifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.indentifier)
    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView :
            return populars.count
        default:
            return 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.indentifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case popularCollectionView :
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.indentifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setup(dish: populars[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }

    }
}
    

