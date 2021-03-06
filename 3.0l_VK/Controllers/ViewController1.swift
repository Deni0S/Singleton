//
//  ViewController1.swift
//  3.0l_VK
//
//  Created by Денис Баринов on 30/06/2019.
//  Copyright © 2019 Денис Баринов. All rights reserved.
//

import UIKit

class ViewController1: UIViewController { // , CityDelegate
    
    var city: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("1 \(city ?? "no city")")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? TableViewController {
//            vc.delegate = self
            vc.closure = {[weak self] city in
                self?.city = city
            }
        }
    }
}
 
