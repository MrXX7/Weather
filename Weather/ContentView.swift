//
//  ContentView.swift
//  Weather
//
//  Created by Oncu Ohancan on 29.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackGroundView(isNight: $isNight)
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "sun.max.fill", temperature: 75)
                
                HStack (spacing: 20){
                WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 75)
                WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 88)
                WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 55)
                WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60)
                WeatherDayView(dayOfWeek: "SAT", imageName: "snow",
                    temperature: 26)
            }
            Spacer()
            
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backGroundColor: .white)
                }
                Spacer()
}
    }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
                .foregroundColor(.white)
        }
    }
}

struct BackGroundView: View {
    
   @Binding var isNight: Bool
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
        Image(systemName: imageName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
        Text("\(temperature)°")
            .font(.system(size: 70, weight: .medium))
            .foregroundColor(.white)
        .foregroundColor(.white)
}
    .padding(.bottom, 40)
}
}


