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

struct CountryData {
    
    let country: String
    let confirmed: Int64
    let recovered: Int64
    let critical: Int64
    let deaths: Int64
    let longitude: Double
    let latitude: Double
    let lastChange: String
    let lastUpdate: String
    
    var fatalityRate: Double {
        return 100 * (Double(deaths) / Double(confirmed))
    }
    var recoveryRate: Double {
        return 100 * (Double(recovered) / Double(confirmed))
    }
    
}

let testTotalData = TotalData(confirmed: 0, recovered: 0, critical: 0, deaths: 0, lastChange: "", lastUpdate: "")
let testCountryData = CountryData(country: "United States", confirmed: 1237659, recovered: 10000, critical: 1234, deaths: 900021, longitude: 0, latitude: 0, lastChange: "", lastUpdate: "")
