//
//  ListDishesViewController.swift
//  food app
//
//  Created by Temitope on 17/07/2021.
//

import UIKit

class ListDishesViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var category : DishCategory!
    var dishes : [Dish] = [
        .init(id: "id1", name: "Bun rieu", description: "This is a best I ever tasted", image: "https://picsum.photos/100/200", calories: 25),
        .init(id: "id1", name: "Mi xao", description: "This is a best I ever tasted", image: "https://picsum.photos/100/200", calories: 43),
        .init(id: "id1", name: "Banh xeo", description: "This is a best I ever tasted", image: "https://picsum.photos/100/200", calories: 65)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        title =  category.name
        
        // Do any additional setup after loading the view.
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    


}
extension ListDishesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        cell.layoutIfNeeded()
        return cell
    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller =  DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
}
