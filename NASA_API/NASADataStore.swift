//
//  NASADataStore.swift
//  NASA_API
//
//  Created by Missy Allan on 11/3/16.
//  Copyright © 2016 Missy Allan. All rights reserved.
//

import Foundation
import UIKit


class NASADataStore {
    
    static let sharedInstance = NASADataStore()
    
    var date: String!
    var explanation: String!
    var title: String!
    var planetImages: [UIImage] = [#imageLiteral(resourceName: "mercuryTransit"), #imageLiteral(resourceName: "venus-7"), #imageLiteral(resourceName: "Earth"), #imageLiteral(resourceName: "mars"), #imageLiteral(resourceName: "jupiter"), #imageLiteral(resourceName: "saturnnasa"), #imageLiteral(resourceName: "uranusvoyager2"), #imageLiteral(resourceName: "neptuneNASA")]

    private init() {}
    
    
    
}
