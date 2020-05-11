//
//  TotalDataView.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/10/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import SwiftUI

struct TotalDataView: View {
    
    var totalData: TotalData
    
    var body: some View {
        VStack {
            HStack {
                TotalDataCart(number: totalData.confirmed.addCommas(), name: "Confirmed")
                TotalDataCart(number: totalData.critical.addCommas(), name: "Critical")
                TotalDataCart(number: totalData.deaths.addCommas(), name: "Deaths")
            }
            HStack {
                TotalDataCart(number: totalData.recovered.addCommas(), name: "Recovered")
                TotalDataCart(number: String(format: "%.2f", totalData.recoveryRate), name: "% Recovery")
                TotalDataCart(number: String(format: "%.2f", totalData.fatalityRate), name: "Fatality Rate")
            }
        }
        .frame(height: 170)
        .padding(10)
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: testTotalData)
    }
}
