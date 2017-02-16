//
//  Planet.swift
//  NASA_API
//
//  Created by Missy Allan on 2/14/17.
//  Copyright © 2017 Missy Allan. All rights reserved.
//

import Foundation

class Planet {
    
    let name: String
    let numberOfMoons: Int
    let fullOrbit: Double
    let facts: [String]
    
    init(name: String, numberOfMoons: Int, fullOrbit: Double, facts: [String]) {
        
        self.name = name
        self.numberOfMoons = numberOfMoons
        self.fullOrbit = fullOrbit
        self.facts = facts
        
    }
    
}

var planets: [Planet] = []




