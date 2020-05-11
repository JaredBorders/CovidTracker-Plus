//
//  ListHeaderView.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/8/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    
    var body: some View {
        
        HStack {
            Text("Country")
                .foregroundColor(Color.black)
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 120, height: 40)
                .padding(.leading)
            Spacer()
            Text("Confirmed")
                .foregroundColor(Color.black)
                .fontWeight(.bold)
                .frame(width: 120, height: 40)
                .font(.subheadline)
            Spacer()
            Text("Deaths")
                .foregroundColor(Color.black)
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 120, height: 40)
                .padding(.trailing)
        }
        .background(K.myColor.lightGrey)
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView()
    }
}
