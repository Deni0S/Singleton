//
//  TableViewController.swift
//  3.0l_VK
//
//  Created by Денис Баринов on 30/06/2019.
//  Copyright © 2019 Денис Баринов. All rights reserved.
//

import UIKit

//protocol CityDelegate {
//    var city: String? { get set }
//}

class TableViewController: UITableViewController {
    
//    var delegate: CityDelegate?
    // Заменим делегат -> замыканием
    var closure: ((String?) -> Void)?
    var city: String?
    
    let cities = ["London", "Moscow", "Urupinsk"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_  tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cities[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        delegate?.city = cities[indexPath.row]
        city = cities[indexPath.row]
        self.closure?(city)
    }
    
}
