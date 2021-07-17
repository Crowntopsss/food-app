//
//  ListOrdersViewController.swift
//  food app
//
//  Created by Temitope on 17/07/2021.
//

import UIKit

class ListOrdersViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var orders: [Orders] = [
            .init(id: "id1", name: "Banh bo", dish: .init(id: "id1", name: "Mi xao", description: "This is a best I ever tasted", image: "https://picsum.photos/100/200", calories: 43)),
            .init(id: "id1", name: "Banh tieu", dish: .init(id: "id1", name: "Mi xao", description: "This is a best I ever tasted", image: "https://picsum.photos/100/200", calories: 43)),
            .init(id: "id1", name: "Banh hoi", dish: .init(id: "id1", name: "Mi xao", description: "This is a best I ever tasted", image: "https://picsum.photos/100/200", calories: 43)),
            .init(id: "id1", name: "Banh cuon", dish: .init(id: "id1", name: "Mi xao", description: "This is a best I ever tasted", image: "https://picsum.photos/100/200", calories: 43))
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orders"
        registerCells()
        // Do any additional setup after loading the view.
    }
    
 
    private func registerCells()  {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListOrdersViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller =  DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}

