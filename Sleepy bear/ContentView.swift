//
//  ContentView.swift
//  Sleepy bear
//
//  Created by admin on 4/1/2565 BE.
//

import SwiftUI

// to define userinterface
struct ContentView: View {
    @State var tap = false
    @State var press = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.968627451, green: 0.8352941176, blue: 0.6117647059, alpha: 1)), Color(#colorLiteral(red: 0.8078431373, green: 0.8980392157, blue: 0.8156862745, alpha: 0.8104506739))]), startPoint: .topLeading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                LottieView(name: "42828-sleeping-bear", loopMode: .loop)
                    .frame(width: 400, height: 400)
                    .shadow(color: Color(#colorLiteral(red: 0.3036622327, green: 0.1979972735, blue: 0.169330228, alpha: 1)), radius: 3, x: 6, y: 6)
                    .shadow(color: Color(#colorLiteral(red: 0.8461962622, green: 0.9077365563, blue: 0.9120236792, alpha: 0.85)), radius: 3, x: 7, y: 7)

                
                Spacer()
                
                ZStack {
                    LottieView(name: tap ? "99-bell" : "16601-red-ring-bell" , loopMode: .loop)
                        .frame(width: 160, height: 160)
                }
                .frame(width: 120, height: 120)
                .background(
                    ZStack {
                        LinearGradient(gradient: Gradient(colors: [Color(press ? #colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1) : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        
                        Circle()
                            .stroke(Color.clear, lineWidth: 10)
                            .shadow(color: Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 3, x: -5, y: -5)
                        
                        Circle()
                            .stroke(Color.clear, lineWidth: 10)
                            .shadow(color: Color(press ? #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1) : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 3, x: 3, y: 3)
                    }
                )
                .clipShape(Circle())
                .scaleEffect(tap ? 1.2 : 1)
                .gesture(
                    LongPressGesture().onChanged { value in
                        self.tap = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            self.tap = false
                        }
                    }
                    .onEnded { value in
                        self.press.toggle()
                    }
            )
    
                Text("The Bear is sleepy!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.368627451, green: 0.2705882353, blue: 0.2941176471, alpha: 1)))
                
                Text("Tap the bell to ring the bear up!")
                    .font(.system(size: 15))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(#colorLiteral(red: 0.368627451, green: 0.2705882353, blue: 0.2941176471, alpha: 1)))
                
            }
            .frame(width: 300, height: 650, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
            
    }
}

// how preview should behave
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
