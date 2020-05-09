//
//  DataModel.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/8/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import Foundation

struct TotalData {
    
    let confirmed: Int64
    let recovered: Int64
    let critical: Int64
    let deaths: Int64
    let lastChange: String
    let lastUpdate: String
    
    var fatalityRate: Double {
        return 100 * (Double(deaths) / Double(confirmed))
    }
    var recoveryRate: Double {
        return 100 * (Double(recovered) / Double(confirmed))
    }
    
}


//let country: String
//let confirmed: Int64
//let recovered: Int64
//let critical: Int64
//let deaths: Int64
//let latitude: Double
//let longitude: Double
//let lastChange: String
//let lastUpdate: String
//
//var fatalityRate: Double {
//    return Double(100 * (deaths / confirmed))
//}
//var recoveryRate: Double {
//    return Double(100 * (recovered / confirmed))
//}
