//
//  DataController.swift
//  MoonShoot
//
//  Created by Denys Nazymok on 27.03.2023.
//

import Foundation

class DataController {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
}
