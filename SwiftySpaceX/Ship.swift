//
//  Ship.swift
//  SwiftySpaceX
//
//  Created by Samuel Schmitt on 9/11/18.
//  Copyright © 2018 Samuel Schmitt. All rights reserved.
//

import UIKit

struct Ship: Codable {
	let shipID: String
	let shipName: String
	let shipModel: String?
	let shipType: String
	let roles: [String]
	let active: Bool
	let imo: Int
	let mmsi: Int
	let abs: Int
	let `class`: Int
	let weightLbs: Int
	let weightKg: Int
	let yearBuild: Int
	let homePort: String
	let status: String
	let speedKn: Int
	let courseDeg: Int?
	let position: Position
	let successfulLandings: Int?
	let attemptedLandings: Int?
	
	let url: String
	let image: String
	
	
	
	struct Position: Codable{
		let latitude: Double
		let longitude: Double
	}
	
	
	
}


