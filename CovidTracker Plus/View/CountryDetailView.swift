//
//  CountryDetailView.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/10/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import SwiftUI

import SwiftUI

struct CountryDetailView: View {
    
    var countryData: CountryData
    
    var body: some View {
        
        VStack {
            VStack {
                CountryDetailRow(number: countryData.confirmed.addCommas(), name: "Confirmed", color: K.myColor.gold)
                    .padding(.top)
                CountryDetailRow(number: countryData.critical.addCommas(), name: "Critical", color: K.myColor.gold)
                CountryDetailRow(number: countryData.deaths.addCommas(), name: "Deaths", color: K.myColor.redd)
                CountryDetailRow(number: "\(String(format: "%.2f", countryData.fatalityRate))%", name: "Fatality Rate", color: .red)
                CountryDetailRow(number: countryData.recovered.addCommas(), name: "Recovered", color: .green)
                CountryDetailRow(number: "\(String(format: "%.2f", countryData.recoveryRate))%", name: "% Recovery", color: .green)
            }
            .background(K.myColor.lightGrey)
            .cornerRadius(8)
            .padding()
            Spacer()
        }
        .padding(.top, 50)
        .navigationBarTitle(countryData.country)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(countryData: testCountryData)
    }
}
