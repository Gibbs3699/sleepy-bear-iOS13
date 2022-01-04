//
//  ContentView.swift
//  Sleepy bear
//
//  Created by admin on 4/1/2565 BE.
//

import SwiftUI

// to define userinterface
struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7490196078, green: 0.2117647059, blue: 0.04705882353, alpha: 0.6980550399)), Color(#colorLiteral(red: 0.3058823529, green: 0.2039215686, blue: 0.1803921569, alpha: 0.5052635749))]), startPoint: .top, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                LottieView(name: "42828-sleeping-bear", loopMode: .loop)
                    .frame(width: 250, height: 250)

                Spacer()
                
                Text("Sleepy Bear!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                    .foregroundColor(.white)
                
            }
            .frame(width: 300, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
            
    }
}

// how preview should behave
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
