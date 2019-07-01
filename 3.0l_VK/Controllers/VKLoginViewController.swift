//
//  ViewController.swift
//  3.0l_VK
//
//  Created by Денис Баринов on 30/06/2019.
//  Copyright © 2019 Денис Баринов. All rights reserved.
//


import UIKit

class VKLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Проинициализируем значениями 
        let session = Session.vkauth
        session.token = "567ygffgh"
        session.userid = 45567778
        
    }
}
