//
//  RecentView.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/8/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidFetch = DataManager()
    @State var searchText = ""
    @State var i = 0
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                TotalDataView(totalData: covidFetch.totalData)
                
                ListHeaderView()
                
                List {
                    CountryDataRowView(countryData: testCountryData)
                    CountryDataRowView(countryData: testCountryData)
                    CountryDataRowView(countryData: testCountryData)
                    CountryDataRowView(countryData: testCountryData)
                    CountryDataRowView(countryData: testCountryData)
                    CountryDataRowView(countryData: testCountryData)
                    CountryDataRowView(countryData: testCountryData)
                    CountryDataRowView(countryData: testCountryData)

                    
                    
                    /*
                     API ISSUES
                    ForEach(covidFetch.allCountries.filter {
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) { countryData in
                        
                        CountryDataRowView(countryData: testCountryData)
                        
                    }
                    */
                }
            }
            .navigationBarTitle("Covid-19 Data", displayMode: .large)
        }
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
