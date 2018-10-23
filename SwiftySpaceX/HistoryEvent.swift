//
//  HistoryEvent.swift
//  SwiftySpaceX
//
//  Created by Samuel Schmitt on 9/11/18.
//  Copyright © 2018 Samuel Schmitt. All rights reserved.
//

import UIKit

struct HistoryEvent: Codable {
    let id: Int
    let title: String
    let eventDateUTC: String
    let eventDateUnix: Int
    let flightNumber: Int
    let details: String
    let links: HistoricalEventLinks
    
    struct HistoricalEventLinks: Codable {
        let reddit: String?
        let article: String?
        let wikipedia: String?
        
    }
}
