//
//  Animal.swift
//  animal-sounds
//
//  Created by Adam Goth on 8/3/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import Foundation

class Animal {
    
    private var _name: String
    
    var name: String {
        return _name
    }
    
    init(name: String) {
        self._name = name
    }
    
}