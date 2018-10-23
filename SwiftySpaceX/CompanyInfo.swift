//
//  CompanyInfo.swift
//  SwiftySpaceX
//
//  Created by Samuel Schmitt on 9/11/18.
//  Copyright © 2018 Samuel Schmitt. All rights reserved.
//

import UIKit

struct CompanyInfo: Codable {
	let name: String
	let founder: String
	let founded: Int
	let employees: Int
	let vehicleS: Int
	let launchSites: Int
	let ceo: String
	let cto: String
	let coo: String
	let ctoPropulsion: String
	let valuation: Int
	let summary: String
	let headquarters: Headquarters
	struct Headquarters: Codable {
		let address: String
		let city: String
		let state: String
	}
}
