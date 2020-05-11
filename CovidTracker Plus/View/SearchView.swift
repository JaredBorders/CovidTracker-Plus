//
//  SearchView.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/10/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import SwiftUI

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack {
            
            TextField("Country...", text: $searchText)
                .padding()
        }
        .frame(height: 50)
        .background(Color("cardBackgroundGray"))
    }
}

//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchView()
//    }
//}
