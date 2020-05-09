//
//  ContentView.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/8/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var covidFetch = DataManager()
    
    var body: some View {
        
        TabView(selection: /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            
            RecentView()
                .tabItem {
                    Tab(imageName: "chart.bar", text: "Recent")
            }
            .tag(0)
            
            
        }
        
    }
}

private struct Tab: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
