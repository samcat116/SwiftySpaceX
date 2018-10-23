//
//  Launch.swift
//  SwiftySpaceX
//
//  Created by Samuel Schmitt on 9/11/18.
//  Copyright © 2018 Samuel Schmitt. All rights reserved.
//

import UIKit

struct Launch:Codable {
	let flightNumber: Int
	let missionName: String
	let missionID: [String]?
	let launchYear: String
	let launchDateUnix: String
	let launchDateUTC: String
	let launchDateLocal: String
	let isTentative: Bool
	
	
	
	struct Rocket: Codable {
		let rocketID: String
		let rocketName: String
		let rocketType: String
		
	}
	
	struct FirstStage: Codable{
		let cores: [Core]
	}
	
	
	struct SecondStage: Codable{
		let block: Int
	}
}
