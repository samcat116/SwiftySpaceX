//
//  Capsule.swift
//  SwiftySpaceX
//
//  Created by Samuel Schmitt on 9/11/18.
//  Copyright © 2018 Samuel Schmitt. All rights reserved.
//

import UIKit

public struct Capsule: Codable {
	let capsuleSerial: String
	let capsuleID: String
	let status: String
	let originalLaunch: String?
	let originalLaunchUnix: Int?
	let missions: [Mission]?
	let landings: Int?
	let type: String
	let details: String
	let reuseCount: Int
}
