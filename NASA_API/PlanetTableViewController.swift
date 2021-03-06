//
//  PlanetTableViewController.swift
//  NASA_API
//
//  Created by Missy Allan on 2/16/17.
//  Copyright © 2017 Missy Allan. All rights reserved.
//

import UIKit
class PlanetTableViewController: UITableViewController {

    
    var planets =  [Planet]()
    var planetImage: UIImage!
    let store = NASADataStore.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isToolbarHidden = true
        generatePlanetInfo()
       self.tableView.insertGradientPinkColor()
    
    }

    
    
    
    @IBAction func backPushed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    

    func generatePlanetInfo() {
        
        let mercury = Planet(name: "Mercury", numberOfMoons: 0, fullOrbit: 87.96, facts: ["An airless world, not unlike our moon.",
                                                                                          "The closest planet to the sun.",
                                                                                          " Mercury can be observed from the Earth passing across the face of the Sun."])
        
        let venus = Planet(name: "Venus", numberOfMoons: 0, fullOrbit: 224.7, facts: ["Venus is the hottest planet. ",
                                                                                      "Venus is the closets planet to Earth.",
                                                                                      "One day on Venus is equal to 117 days on Earth!"])
        
        let earth = Planet(name: "Earth", numberOfMoons: 1, fullOrbit: 365.27, facts: ["The only planet that has an atmosphere. containing 21 percent oxygen.",
                                                                                       "The only planet that has liquid water on its surface.",
                                                                                       "The only planet in the solar system that has life that we know of." ])
        
        let mars = Planet(name: "Mars", numberOfMoons: 2, fullOrbit: 687.0, facts: ["Mars and Earth have approximately the same landmass.",
                                                                                    "Mars is home to the tallest mountain in the solar system.",
                                                                                    "Pieces of Mars have fallen onto Earth. Whoa!"])
        
        let jupiter = Planet(name: "Jupiter", numberOfMoons: 67, fullOrbit: 4333.0, facts: ["Jupiter is the stormiest planet in the Solar System. Stormz!",
                                                                                            "Jupiter is about 483 million miles, or 777 million kilometres from the Sun. Very Far!",
                                                                                            "Jupiter has the shortest day of all the planets."
            ])
        
        
        let saturn = Planet(name: "Saturn", numberOfMoons: 18, fullOrbit: 10759.0, facts: ["Saturn's rings were first seen by Galileo in 1610 through a telescope.",
                                                                                           "Saturn has the second largest moon in the solar system, Titan. Big Moon!",
                                                                                           "Saturn's rings may actually be composed of ice."  ])
        
        let uranus = Planet(name: "Uranus", numberOfMoons: 27, fullOrbit: 30687.0, facts: ["Uranus was the first planet discovered by telescope.",
                                                                                           "Uranus spins lying on its side, perhaps due to a large collision early in its formation.",
                                                                                           "Uranus takes 84 Earth years to go around the sun! "])
        
        let neptune = Planet(name: "Neptune", numberOfMoons: 13, fullOrbit: 60148.35, facts: ["Neptune is the third largest planet in the solar system.",
                                                                                              "The discovery of Neptune was one of the most exciting discoveries in Astronomy.",
                                                                                              "Neptune is one of the four gas giants and is composed only of gas."])
        
        
        
        
        planets.append(mercury)
        planets.append(venus)
        planets.append(earth)
        planets.append(mars)
        planets.append(jupiter)
        planets.append(saturn)
        planets.append(uranus)
        planets.append(neptune)
        
        
    }


    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        let planet = planets[indexPath.row]
        cell.textLabel?.text = planet.name
       cell.backgroundColor = UIColor.clear
       // cell.backgroundColor = UIColor(red:0.60, green:0.40, blue:0.64, alpha:1.0)
        cell.textLabel?.textColor = UIColor.white
        //cell.textLabel?.text = planets[indexPath.row]

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPlanet = planets[indexPath.row]
        selectedPlanet.planetImage = store.planetImages[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: selectedPlanet)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "showDetail" {
            let dest = segue.destination as! PlanetDetailViewController
           let selectedPlanet = sender as! Planet
            dest.planet = selectedPlanet
            
            
            
        }
    }

}


extension UIView {
    
    // create gradient color for the view
    func insertGradientPinkColor() {

        let firstColor = UIColor(red:1.00, green:0.88, blue:0.33, alpha:1.0).cgColor
        let secondColor = UIColor(red:0.77, green:0.43, blue:0.62, alpha:1.0).cgColor
        let thirdColor = UIColor(red:0.60, green:0.40, blue:0.64, alpha:1.0).cgColor
        let gradient: CAGradientLayer
        gradient = CAGradientLayer()
        gradient.colors = [ firstColor,secondColor,thirdColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = self.frame
        self.layer.insertSublayer(gradient, at: 0)
        
}
}









