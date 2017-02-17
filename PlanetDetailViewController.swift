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
        self.navigationController?.navigationBar.tintColor = UIColor.themePink
        
        self.planetNameLabel.text = "\(planet.name)"
        if planet.numberOfMoons == 1 {
            self.numOfMoonsLabel.text = "\(planet.numberOfMoons) moon 🌚"
 
        }else{
            self.numOfMoonsLabel.text = "\(planet.numberOfMoons) moons 🌚"
        }
        self.numOfDaysLabel.text = "\(planet.fullOrbit) days full orbit"
        self.factsTextView.text = "\(planet.facts)"
        self.view.insertGradianPinkColor()

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

