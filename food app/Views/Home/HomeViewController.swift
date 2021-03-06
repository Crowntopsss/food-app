//
//  HomeViewController.swift
//  food app
//
//  Created by Temitope on 13/02/2021.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Africe Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africe Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africe Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africe Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africe Dish", image: "https://picsum.photos/100/200")
    
    ]
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    private func registerCells(){
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.indentifer, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.indentifer)
    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.indentifer, for: indexPath) as! CategoryCollectionViewCell
        return cell 
    }
}
    
