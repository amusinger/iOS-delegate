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
    
    func getFullName(name: String, surname: String, completion: @escaping(String) -> Void){
        completion(name + surname)
    }
}

class Someone {
    let name: String
    let surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    
    func getFullName(name: String, surname: String, completion: @escaping(String) -> Void){
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { (timer) in
            completion(name + " " + surname)
        }	
    }
    
}
