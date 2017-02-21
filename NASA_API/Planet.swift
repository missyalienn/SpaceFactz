//
//  Planet.swift
//  NASA_API
//
//  Created by Missy Allan on 2/14/17.
//  Copyright © 2017 Missy Allan. All rights reserved.
//

import Foundation
import UIKit
class Planet {
    
    let name: String
    let numberOfMoons: Int
    let fullOrbit: Double
    var facts: [String]
    var planetImage: UIImage?
    
    init(name: String, numberOfMoons: Int, fullOrbit: Double, facts: [String], planetImage: UIImage? = nil ) {
        
        self.name = name
        self.numberOfMoons = numberOfMoons
        self.fullOrbit = fullOrbit
        self.facts = facts
        self.planetImage = planetImage
        
    }

    
}




var planets: [Planet] = []




