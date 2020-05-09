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
    
    var body: some View {
        return Text("Confirmed: \(covidFetch.totalData.confirmed)")
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
