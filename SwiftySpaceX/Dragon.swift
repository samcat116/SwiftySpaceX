//
//  Dragon.swift
//  SwiftySpaceX
//
//  Created by Samuel Schmitt on 9/11/18.
//  Copyright © 2018 Samuel Schmitt. All rights reserved.
//

import UIKit

struct Dragon: Codable {
	let id: String
	let name: String
	let type: String
	let active: Bool
	let crewCapacity: Int
	let sidewallAngleDeg: Int
	let orbitDurationYr: Int
	let dryMassKG: Int
    let dryMassLB: Int
    let firstFlight: String
    let heatShield: Heatshield
    let thrusters: [Thruster]
    let launchPayloadMass: LaunchPayloadMass
    let launchPayloadVol: LaunchPayloadVol
    let returnPayloadMass: ReturnPayloadMass
    let returnPayloadVol: ReturnPayloadVol
    let heightWithTrunk: HeightWithTrunk
    let diameter: Diameter
    let wikipedia: String
    let description: String
    
    struct Heatshield: Codable {
        let material: String
        let size_meters: Int
        let tempDegrees: Int
        let devPartmner: String
    }
    
    struct Thruster: Codable {
        let type: String
        let amount: Int
        let pods: Int
        let fuel1: String
        let fuel2: String
        let thrust: Thrust
    }
    struct Thrust: Codable {
        let kN: Double
        let lbf: Int
    }
    
    struct LaunchPayloadMass: Codable {
        let kg: Int
        let lb: Int
    }
    
	struct LaunchPayloadVol: Codable {
		let cubicMeters: Int
		let cubicFeet: Int
	}
	
	struct ReturnPayloadMass: Codable {
		let kg: Int
		let lb: Int
	}
	
	struct ReturnPayloadVol: Codable {
		let cubicMeters: Int
		let cubicFeet: Int
	}
	
	struct PressurizedCapsule: Codable {
		let payloadVolume: PayloadVolume
	}
	
	struct PayloadVolume: Codable {
		let cubicMeters: Int
		let cubicFeet: Int
	}
    struct Trunk: Codable {
        let trunkVolume: TrunkVolume
        let cargo: Cargo
    }
    
    struct TrunkVolume: Codable {
        let cubicMeters: Int
        let cubicFeet: Int
    }
    
    struct Cargo: Codable {
        let solarArray: Int
        let unpressurizedCargo: Bool
    }
    struct HeightWithTrunk: Codable {
        let meters: Double
        let feet: Double
    }
    
    struct Diameter: Codable{
        let meters: Double
        let feet: Double
    }
	
}
