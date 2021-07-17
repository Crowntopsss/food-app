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
    @IBOutlet weak var specialCollectionView: UICollectionView!
    
    
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
        
    var specials: [Dish] = [
        .init(id: "id1", name: "Cha lua", description: "This is a best I ever tasted", image: "https://picsum.photos/100/200", calories: 76),
        .init(id: "id1", name: "Nem chua", description: "This is a best I ever tasted", image: "https://picsum.photos/100/200", calories: 98)
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        specialCollectionView.dataSource = self
        specialCollectionView.delegate = self
    }
    private func registerCells(){
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        specialCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)

    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView :
            return populars.count
        case specialCollectionView :
            return specials.count
        default:
            return 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case popularCollectionView :
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setup(dish: populars[indexPath.row])
            return cell
        case specialCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as! DishLandscapeCollectionViewCell
            cell.setup(dish: specials[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }

    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView ==  categoryCollectionView {
            
        }else {
            let controller =  DishDetailViewController.instantiate()
            controller.dish = collectionView == popularCollectionView ? populars[indexPath.row] : specials[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        }
    }
}
    

