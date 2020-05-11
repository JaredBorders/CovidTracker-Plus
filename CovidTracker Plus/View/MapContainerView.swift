//
//  MapContainerView.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/10/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import SwiftUI

struct MapContainerView: View {
    
    @ObservedObject var covidFetch = DataManager()
    
    var body: some View {

        MapView(countryData: $covidFetch.allCountries)
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
