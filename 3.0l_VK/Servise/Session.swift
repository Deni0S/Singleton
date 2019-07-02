//
//  VKService.swift
//  3.0l_VK
//
//  Created by Денис Баринов on 30/06/2019.
//  Copyright © 2019 Денис Баринов. All rights reserved.
//

import Foundation

// Создадим singletone 
class Session {
    var token = ""
    var userid = 0
    private init () {}
    static let vkauth = Session()
    // Стандартное именование свойтва для синглтона обычно instance, shared или default
}
