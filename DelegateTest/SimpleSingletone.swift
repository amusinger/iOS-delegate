//
//  SimpleSingletone.swift
//  DelegateTest
//
//  Created by Aizhan Yerimbetova on 12/5/17.
//  Copyright © 2017 Aizhan Yerimbetova. All rights reserved.
//

import Foundation

class Temirlan {
    static let shared = Temirlan()
    
    private init(){}
    
    let name: String = "Temirlan"
    let surname: String = "Ismukhanov"
}

class Someone {
    let name: String
    let surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    
    
}
