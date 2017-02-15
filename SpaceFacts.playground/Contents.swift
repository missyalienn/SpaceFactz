//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

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

func generatePlanetInfo() {
    
    let mercury = Planet(name: "Mercury", numberOfMoons: 0, fullOrbit: 87.96, facts: ["Mercury is an airless world, not unlike our moon.",
                                                                                      "Mercury is the closest planet to the sun.",
                                                                                      "Thirteen times a century Mercury can be observed from the Earth passing across the face of the S4,333un."])
    
    let venus = Planet(name: "Venus", numberOfMoons: 0, fullOrbit: 224.7, facts: ["Venus is the hottest planet. ",
                                                                                  "Venus is the closets planet to Earth.",
                                                                                   "One day on Venus is equivalent to 117 days of Earth!"])
    
    let earth = Planet(name: "Earth", numberOfMoons: 1, fullOrbit: 365.27, facts: ["Earth is the only planet that has an atmosphere containing 21 percent oxygen.",
                                                                                    "Earth is the only planet that has liquid water on its surface.",
                                                                                    "Earth is the only planet in the solar system that has life that we know of." ])
    
    let mars = Planet(name: "Mars", numberOfMoons: 2, fullOrbit: 687.0, facts: ["Mars and Earth have approximately the same landmass.",
                                                                                "Mars is home to the tallest mountain in the solar system.",
                                                                                "Pieces of Mars have fallen onto Earth. Whoa!"])
    
    let jupiter = Planet(name: "Jupiter", numberOfMoons: 67, fullOrbit: 4333.0, facts: ["Jupiter is the stormiest planet in the Solar System",
                                                                                    "Jupiter is about 483 million miles, or 777 million kilometres from the Sun",
                                                                                    "Jupiter has the shortest day of all the planets."
                                                                                    ])
    
    
    let saturn = Planet(name: "Saturn", numberOfMoons: 18, fullOrbit: 10759.0, facts: ["Saturn's rings were first seen by Galileo in 1610 through a telescope.",
                                                                                     "Saturn has the second largest moon in the solar system, Titan",
                                                                                     "Saturn's rings may actually be composed of ice."  ])
    
    let uranus = Planet(name: "Uranus", numberOfMoons: 27, fullOrbit: 30687.0, facts: ["Uranus was the first planet discovered by telescope.",
                                                                                            "Uranus spins lying on its side, perhaps due to a large collision early in its formation.",
                                                                                            "Uranus takes 84 Earth years to go around the sun! "])
    
    let neptune = Planet(name: "Neptune", numberOfMoons: 13, fullOrbit: 60148.35, facts: ["Neptune is the third largest planet in the solar system.",
                                                                                          "The discovery of Neptune was one of the most exciting discoveries in Astronomy",
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





