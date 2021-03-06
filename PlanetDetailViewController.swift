//
//  PlanetDetailViewController.swift
//  NASA_API
//
//  Created by Missy Allan on 2/16/17.
//  Copyright © 2017 Missy Allan. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var planet: Planet!
    //var planetImage: UIImage!
    let store = NASADataStore.sharedInstance
    
    @IBOutlet weak var factsTableView: UITableView!
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var numOfMoonsLabel: UILabel!
    @IBOutlet weak var numOfDaysLabel: UILabel!
   
    @IBOutlet weak var planetImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.themePink
        self.factsTableView.backgroundColor = UIColor.clear
        self.planetImageView.image = planet.planetImage
        self.planetNameLabel.text = "\(planet.name)"
        if planet.numberOfMoons == 1 {
            self.numOfMoonsLabel.text = "\(planet.numberOfMoons) moon 🌚"
 
        }else{
            self.numOfMoonsLabel.text = "\(planet.numberOfMoons) moons 🌚"
        }
        self.numOfDaysLabel.text = "\(planet.fullOrbit) days full orbit"
        self.view.insertGradientPinkColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: TableView DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planet.facts.count
    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "factCell")
        let fact = planet.facts[indexPath.row]
        cell?.textLabel?.text = fact
        cell?.backgroundColor = UIColor.clear
        cell?.textLabel?.textColor = UIColor.themeSunshine
        cell?.textLabel?.numberOfLines = 0
        cell?.textLabel?.lineBreakMode = .byWordWrapping
        return cell!
    }
    
    
    
}


