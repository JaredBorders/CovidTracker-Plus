//
//  DataManger.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/8/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class DataManager: ObservableObject {
    
    @Published var allCountries: [CountryData] = []
    @Published var totalData: TotalData = testTotalData
    
    init() { getLatestTotals(); getLatestCountries() }
    
    func getLatestTotals() {
    
        AF.request(K.url_total, headers: K.headers).responseJSON { response in
            
            if let result = response.data {
                
                let json = JSON(result)
                
                let confirmed = json[0]["confirmed"].intValue
                let recovered = json[0]["recovered"].intValue
                let critical = json[0]["critical"].intValue
                let deaths = json[0]["deaths"].intValue
                let lastChange = json[0]["lastChange"].stringValue
                let lastUpdate = json[0]["lastUpdate"].stringValue
                
                self.totalData = TotalData(confirmed: Int64(confirmed), recovered: Int64(recovered), critical: Int64(critical), deaths: Int64(deaths), lastChange: lastChange, lastUpdate: lastUpdate)
                
            }
        }
    }
    
    func getLatestCountries() {
        
        AF.request(K.url_country, headers: K.headers).responseJSON { response in
            
            if let result = response.value {
                
                let dataDictionary = result as! [Dictionary<String, AnyObject>]
                
                for countryData in dataDictionary {
                    
                    let country = countryData["country"] as? String ?? "unknown"
                    let confirmed = countryData["confirmed"] as? Int64 ?? 0
                    let recovered = countryData["recovered"] as? Int64 ?? 0
                    let critical = countryData["critical"] as? Int64 ?? 0
                    let deaths = countryData["deaths"] as? Int64 ?? 0
                    let latitude = countryData["latitude"] as? Double ?? 0.0
                    let longitude = countryData["longitude"] as? Double ?? 0.0
                    let lastChange = countryData["lastChange"] as? String ?? "unknown"
                    let lastUpdate = countryData["lastUpdate"] as? String ?? "unknown"
                    
                    let newDataModel = CountryData(country: country, confirmed: confirmed, recovered: recovered, critical: critical, deaths: deaths, longitude: latitude, latitiude: longitude, lastChange: lastChange, lastUpdate: lastUpdate)
                    
                    self.allCountries.append(newDataModel)
                    
                }
                
                self.allCountries = self.allCountries.sorted(by: { $0.confirmed > $1.confirmed })
                
            }
        }
    }
}
