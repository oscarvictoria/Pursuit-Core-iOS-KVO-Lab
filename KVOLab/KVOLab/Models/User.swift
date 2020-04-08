//
//  Users.swift
//  KVOLab
//
//  Created by Oscar Victoria Gonzalez  on 4/8/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import Foundation

@objc class User: NSObject {
    static var shared = User()
    @objc dynamic var userName: String
    @objc dynamic var balance: Double
    
    
    override init() {
        self.userName = ""
        self.balance = 0
    }
}

