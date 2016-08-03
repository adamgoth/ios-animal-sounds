//
//  Animal.swift
//  animal-sounds
//
//  Created by Adam Goth on 8/3/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import Foundation
import UIKit

class Animal {
    
    private var _name: String
    private var _color: UIColor
    
    var name: String {
        return _name
    }
    
    var color: UIColor {
        return _color
    }
    
    init(name: String, color: UIColor) {
        self._name = name
        self._color = color
    }
    
}