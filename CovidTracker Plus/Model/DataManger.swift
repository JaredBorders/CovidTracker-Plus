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
    
    init() { getLatestTotals() }
    
    func getLatestTotals() {
    
        AF.request(K.url_total, headers: K.headers).responseJSON { response in
        
        }
    }
    
}
