//
//  PlanetDetailViewController.swift
//  NASA_API
//
//  Created by Missy Allan on 2/16/17.
//  Copyright © 2017 Missy Allan. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    var planet: Planet!
    
    @IBOutlet weak var planetNameLabel: UILabel!
    
    @IBOutlet weak var numOfMoonsLabel: UILabel!
    
    @IBOutlet weak var numOfDaysLabel: UILabel!
    
    @IBOutlet weak var factsTextView: UITextView!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.planetNameLabel.text = "\(planet.name)"
        self.numOfMoonsLabel.text = "\(planet.numberOfMoons)"
        self.numOfDaysLabel.text = "\(planet.fullOrbit) days (full orbit)"
        self.factsTextView.text = "\(planet.facts)"
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

