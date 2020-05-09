//
//  Constants.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/8/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import Foundation
import Alamofire

struct K {
    
    static let apiKey =
    "283e799f0cmsh3b8c07eea7055dbp15757ajsncb0ac8c01289"
    static let url_total =
    "https://covid-19-data.p.rapidapi.com/totals?format=json"
    static let url_country =
    "https://covid-19-data.p.rapidapi.com/country/all?format=undefined"
    static let headers: HTTPHeaders = [
        "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
        "x-rapidapi-key": K.apiKey
    ]
    
}
