//
//  SpaceXAPI.swift
//  SwiftySpaceX
//
//  Created by Samuel Schmitt on 10/16/18.
//  Copyright © 2018 Samuel Schmitt. All rights reserved.
//

import UIKit

public class SpaceX: NSObject {
	var apiComponents = URLComponents()
	let version = "/v3"
	
	public override init() {
		apiComponents.scheme = "https"
		apiComponents.host = "api.spacexdata.com"
	}
	
    //Return all capsules
    func capsules() -> [Capsule] {
		apiComponents.path = version + "/capsules"
		var capsules = [Capsule]()
		guard let url = apiComponents.url else {
			//Error casting URLComponents to a URL
			print("There was an Error with the URL")
			//TODO: Impliment a default blank launch?
			return capsules
		}
		let task = URLSession.shared.dataTask(with: url){ (data, response, error) -> Void in
			guard error  = nil else {
				print("There was an error returned from the API:" + /(error))
				return
			}
			
			guard let content = data else{
				print("There was an error with the data")
				return
			}
			let decoder = JSONDecoder()
			guard capsules = try decoder.decode([Capsule].self, from: content) else {
				print("There was an error converting to JSON")
			}
			
		}
		
		task.resume()
		
		
        return capsules
    }
	
	//Return one capsule given a specific capsule_serial
	func capsule(_ capsuleSerial: String) -> Capsule {
		apiComponents.path = version + "/capsule/" + capsuleSerial
		return Capsule()
	}
	
	//Return all cores
	func cores() -> [Core] {
		apiComponents.path = version + "/cores"
		return [Core]()
	}
	
	//Return one core given a specific core_serial
	func core(_ coreSerial: String) -> Core {
		apiComponents.path = version + "/cores/" + coreSerial
		return Core()
	}
	
	
	//Return all dragons
	func dragons() -> [Dragon] {
		apiComponents.path = version + "/dragons"
		return [Dragon]()
		
	}
	
	//Return a single dragon given a specific dragon id
	func dragon(withDragonID id: String) -> Dragon {
		apiComponents.path = version + "/dragons/" + id
		return Dragon()
	}
	
	//Return Spacex History
	func history() -> [HistoryEvent] {
		apiComponents.path = version + "/history"
		return [HistoryEvent]()
	}
	
	//Return one event with a given ID
	func historicalEvent(withID id: String) -> HistoryEvent{
		apiComponents.path = version + "/history/" + id
		return HistoryEvent()
	}
	
	//Return Spacex Company Info
	func companyInfo() -> CompanyInfo {
		apiComponents.path = version + "/info"
		return CompanyInfo()
	}
	
	//Return all launches
	func launches() -> [Launch] {
		apiComponents.path = version + "/launches"
		return [Launch]()
	}
	
	//Return one launch with a given flight number
	func launch(withFlightNumber flightNumber: String) -> Launch {
		apiComponents.path = version + "/launches/" + flightNumber
		return Launch()
	}
	
	//Returns past launches
	func pastLaunches() -> [Launch] {
		apiComponents.path = version + "/launches/past"
		return [Launch]()
	}
	
	//Return upcoming launches
	func upcomingLaunches() -> [Launch] {
		apiComponents.path = version + "/launches/upcoming"
		return [Launch]()
	}
	
	//Returns the last launch
    func latestLaunch() -> Launch {
		apiComponents.path = version + "/launches/latest"
        return Launch()
    }
	
	//Returns the next launch
	func nextLaunch() -> Launch {
		apiComponents.path = version + "/launches/next"
		return Launch()
	}
	
	//Returns all launch pads
	func launchpads() -> [LaunchPad] {
		apiComponents.path = version + "/launchpads"
		return [LaunchPad]()
	}
	
	//Returns one launchpad with a given site ID
	func launchpad(withSiteID siteID: String) -> LaunchPad{
		apiComponents.path = version + "/launchpads/" + siteID
		return LaunchPad()
	}
	
	//Returns all missions
	func missions() -> [Mission] {
		apiComponents.path = version + "/missions"
		return [Mission]()
		
	}
	
	//Returns one mission with a specific mission ID
	func mission(withMissionID missionID: String) -> Mission {
		apiComponents.path = version + "/missions/"  + missionID
		return Mission()
	}
	
	//Returns all payloads
	func payloads() -> [Payload] {
		apiComponents.path = version + "/payloads"
		return [Payload]()
		
	}
	
	//Returns one payload with a specific payload ID
	func payload(withPayloadID payloadID: String) -> Payload {
		apiComponents.path = version + "/payloads" + payloadID
		return Payload()
	}
	
	//Returns all rockets
	func rockets() -> [Rocket] {
		apiComponents.path = version + "/rockets"
		return [Rocket]()
	}
	
	//Returns one rocket with a specific rocket ID
	func rocket(withID rocketID: String) -> Rocket {
		apiComponents.path = version + "/rockets/" + rocketID
		return Rocket()
		
	}
	
	//Returns the roadster orbiter data
	func roadster() -> Roadster {
		apiComponents.path = version + "/roadster"
		return Roadster()
	}
	
	//Returns all ships
	func ships() -> [Ship] {
		apiComponents.path = version + "/ships"
		return [Ship]()
	}
	
	//Returns one ship with a specific ID
	func ship(withShipID shipID: String) -> Ship {
		apiComponents.path = version + "/ships/" + shipID
		return Ship()
	}
	
	
	
	
	
    
    
   
    
}
