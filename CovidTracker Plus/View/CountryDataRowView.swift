//
//  CountryDataRowView.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/8/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import SwiftUI

struct CountryDataRowView: View {
    
    var countryData: CountryData
    
    var body: some View {
        HStack {
            Text(countryData.country)
                .fontWeight(.medium)
                .font(.subheadline)
                .lineLimit(2)
                .frame(width: 110, alignment: .leading)
            Spacer()
            Text(countryData.confirmed.addCommas())
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)
            Spacer()
            Text(countryData.deaths.addCommas())
                .frame(width: 50, height: 40)
                .font(.subheadline)
                .foregroundColor(.red) // ADD PALLETE COLOR
                .padding(.leading, 15)
            Spacer()
            Text(countryData.recovered.addCommas())
                .frame(width: 50, height: 40)
                .font(.subheadline)
                .foregroundColor(.green) // ADD PALLETE COLOR
        }
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
