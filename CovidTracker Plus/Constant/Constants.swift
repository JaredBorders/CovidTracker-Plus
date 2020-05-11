//
//  Constants.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/8/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import Foundation
import SwiftUI
import Alamofire

struct K {
    
    static let apiKey =
    "d172e810e7msh47584ae043c146dp12d8eejsnb0b3c42c4a59" // Public
    //"283e799f0cmsh3b8c07eea7055dbp15757ajsncb0ac8c01289" Personal
    
    static let url_total =
    "https://covid-19-data.p.rapidapi.com/totals?format=json"
    static let url_country =
    "https://covid-19-data.p.rapidapi.com/country/all?format=json"
    static let headers: HTTPHeaders = [
        "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
        "x-rapidapi-key": K.apiKey
    ]
    
    struct myColor {
        static let lightGrey = Color(red: 0.86, green: 0.87, blue: 0.88)
        static let blackish = Color(red: 0.24, green: 0.24, blue: 0.24)
        static let gold = Color(red: 1.00, green: 0.62, blue: 0.10)
        static let redd = Color(red: 1.00, green: 0.22, blue: 0.22)
    }
    
}
