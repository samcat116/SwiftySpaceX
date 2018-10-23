//
//  Core.swift
//  SwiftySpaceX
//
//  Created by Samuel Schmitt on 9/11/18.
//  Copyright © 2018 Samuel Schmitt. All rights reserved.
//

import UIKit

struct Core: Codable {
	let coreSerial: String
	let block: Int
	let status: String
	let originalLaunch: String
	let originalLaunchUnix: String
	let mission: [Mission]?
	let reuseCount: Int
	let rtlsAttempts: Int
	let rtlsLandings: Int
	let asdsAttempts: Int
	let asdsLandings: Int
	let waterLanding: Bool
	let details: String
}
