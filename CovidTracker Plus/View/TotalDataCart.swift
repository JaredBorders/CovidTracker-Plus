//
//  TotalDataCart.swift
//  CovidTracker Plus
//
//  Created by Jared Borders on 5/10/20.
//  Copyright © 2020 Jared Borders. All rights reserved.
//

import SwiftUI

struct TotalDataCart: View {
    
    var number: String = "Error"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                Text(self.number)
                    .font(.subheadline)
                    .padding(5)
                    .foregroundColor(Color.black)
                Text(self.name)
                    .fontWeight(.bold)
                    .font(.subheadline)
                    .padding(5)
                    .foregroundColor(Color.black)
            }
            .frame(width: geometry.size.width, height: 80, alignment: .center)
            .background(K.myColor.lightGrey)
            .cornerRadius(15)
            
        }
    }
}

struct TotalDataCart_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCart()
    }
}
