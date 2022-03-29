//
//  WeatherButton.swift
//  Weather
//
//  Created by Oncu Ohancan on 29.03.2022.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backGroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backGroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .medium, design: .default))
            .cornerRadius(10)
    }
    
}
