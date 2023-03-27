//
//  Missions.swift
//  MoonShoot
//
//  Created by Denys Nazymok on 25.03.2023.
//

import Foundation

struct Mission: Codable, Identifiable {
    
    struct Crew: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let description: String
    let crew: [Crew]
    
    var displayName: String {
        "Apollo \(id)"
    }
    var image: String {
        "apollo\(id)"
    }
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
