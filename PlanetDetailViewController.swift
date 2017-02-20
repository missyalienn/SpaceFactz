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
    
    
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var factsTableView: UITableView!
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var numOfMoonsLabel: UILabel!
    @IBOutlet weak var numOfDaysLabel: UILabel!

    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.themePink
        self.factsTableView.backgroundColor = UIColor.clear
        
        self.planetNameLabel.text = "\(planet.name)"
        if planet.numberOfMoons == 1 {
            self.numOfMoonsLabel.text = "\(planet.numberOfMoons) moon 🌚"
 
        }else{
            self.numOfMoonsLabel.text = "\(planet.numberOfMoons) moons 🌚"
        }
        self.numOfDaysLabel.text = "\(planet.fullOrbit) days full orbit"
        self.view.insertGradianPinkColor()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: return UIImage 
//    func getPlanetImage(planet: String) -> UIImage {
//        
//        switch planet {
//        case "Mercurty":
//            return UIImage(data: #imageLiteral(resourceName: "mercuryTransit"))!
//        case "Venus"
//        default:
//            break
//        }
//    }
//    
//    
    
    
    
    
    
    
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
       // cell?.textLabel?.adjustsFontSizeToFitWidth = true
        
        
        return cell!
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

