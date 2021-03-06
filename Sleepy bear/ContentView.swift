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
    @State var viewState = CGSize.zero
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(press ? #colorLiteral(red: 0.9607843137, green: 0.9333333333, blue: 0.862745098, alpha: 1): #colorLiteral(red: 0.968627451, green: 0.8352941176, blue: 0.6117647059, alpha: 1)), Color( press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.8078431373, green: 0.8980392157, blue: 0.8156862745, alpha: 0.8104506739))]), startPoint: .topLeading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                ZStack {
                    LottieView(name: "42828-sleeping-bear", loopMode: .loop)
                        .frame(width: 350, height: 400)
                        .shadow(color: Color(#colorLiteral(red: 0.3036622327, green: 0.1979972735, blue: 0.169330228, alpha: 1)), radius: 3, x: 6, y: 6)
                        .offset(y: press ? -600 : 0)
                        .rotation3DEffect(Angle(degrees: press ? Double(viewState.height / 10) - 10 : 0), axis: (x: 10.0, y: 0.0, z: 0.0))
                        .scaleEffect(press ? 0.9 : 1)
                        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    ZStack {
                        
                        LottieView(name: "11517-christmas-bounce", loopMode: .loop)
                            .frame(width: 400, height: 400)
                            .offset(y: press ? -150 : 0)
                            .opacity(press ? 0.6 : 0)
                            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                        
                        LottieView(name: "10347-christmas-background", loopMode: .loop)
                            .frame(width: 400, height: 400)
//                            .offset(y: -200 )
                            .opacity(press ? 0.6 : 0)
                            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                        
                        LottieView(name: "4622-bear", loopMode: .loop)
                            .frame(width: 400, height: 500)
                            .opacity(press ? 1 : 0)
                            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                        
                    }
                    
                    ZStack {
                        
                        HStack {
                            LottieView(name: "89858-christmas-tree-with-flying-star", loopMode: .loop)
                                .frame(width: 200, height: 200)
                                .shadow(radius: 20)
                                .offset(x: -80,y: press ? 60 : 600)
                                .rotationEffect(Angle.degrees(-25))
        //                            .scaleEffect(400)
                                .opacity(press ? 1 : 0)
                                .animation(Animation.easeIn(duration: 2).delay(0.2))
                                .animation(Animation.easeOut(duration: 0.01).delay(0))
                            
                            LottieView(name: "89858-christmas-tree-with-flying-star", loopMode: .loop)
                                .frame(width: 200, height: 200)
                                .shadow(radius: 20)
                                .offset(x: 80,y: press ? 60 : 600 )
                                .rotationEffect(Angle.degrees(25))
        //                            .scaleEffect(400)
                                .opacity(press ? 1 : 0)
                                .animation(Animation.easeIn(duration: 2).delay(0.2))
                                .animation(Animation.easeOut(duration: 0.01).delay(0))
                        }
                        
                        LottieView(name: "1145-merrychristmas", loopMode: .loop)
                            .frame(width: 500, height: 500)
                            .clipShape(RoundedRectangle(cornerRadius: 100))
                            .shadow(radius: 20)
                            .offset(y: press ? 410 : 600 )
    //                            .scaleEffect(400)
                            .opacity(press ? 0.9 : 0)
                            .animation(Animation.easeIn(duration: 1).delay(0.1))
                            .animation(Animation.easeOut(duration: 0.1).delay(0.1))
                    }
                }
                
                Spacer()
                
                ZStack {
                    LottieView(name: "12476-bell" , loopMode: .loop)
                        .frame(width: 120, height: 120)
                        .opacity(0.8)
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
                .overlay(Circle()
                    .trim(from: tap ? 0.001 : 1 , to : 1)
                    .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 5, lineCap: .round))
                    .frame(width: 88, height: 88)
                    .rotationEffect(Angle(degrees: 90))
                    .rotation3DEffect(
                        Angle(degrees: 180),
                        axis: (x: 1, y: 0, z: 0))
                    .shadow(color: Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), radius: 5, x: 3, y: 3)
                    .animation(.easeInOut)
                )
                .clipShape(Circle())
                .scaleEffect(tap ? 1.2 : 1)
                .gesture(
                    LongPressGesture().onChanged { value in
                        self.tap = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            self.tap = false
                        }
                    }
                    .onEnded { value in
                        self.press.toggle()
                    }
            )
    
                VStack() {
                    Text(press ? "" : "The Bear is sleepy!" )
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.368627451, green: 0.2705882353, blue: 0.2941176471, alpha: 1)))
                    
                    
                    Text(press ? "Tap the bell to ring the bear up!" : "Tap the bell to put the bear to sleep")
                        .font(.system(size: 10))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)  : #colorLiteral(red: 0.368627451, green: 0.2705882353, blue: 0.2941176471, alpha: 1)))
                }
                .frame(width: 400, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }
            .padding(.bottom, 100)
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
