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
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 120, height: 40)
                .foregroundColor(Color(.black))
            
            Spacer()
            
            Text(countryData.confirmed.addCommas())
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 120, height: 40)
                .foregroundColor(K.myColor.gold)
            
            Spacer()
            
            Text(countryData.deaths.addCommas())
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 120, height: 40)
                .foregroundColor(K.myColor.redd)
        }
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
