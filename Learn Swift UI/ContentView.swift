//
//  ContentView.swift
//  Learn Swift UI
//
//  Created by Wandi on 16/03/21.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Notification")
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notification")
                }
            Text("Profile")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .font(.headline)
        .accentColor(Color(#colorLiteral(red: 1, green: 0.3052355647, blue: 0.2890732884, alpha: 1)))

    }
}

struct DashboardView: View {
    var body: some View {
        ZStack(alignment: .top) {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.3052355647, blue: 0.2890732884, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.8392156863, blue: 0.6352941176, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/).ignoresSafeArea(.all).frame(width: .infinity, height: 700)
                Image("orbit-max")
                    .resizable()
                    .frame(width: 400, height: 400)
                    .offset(y: -150)
            }
            ScrollView(showsIndicators: false) {
                VStack {
                    Spacer(minLength: 250)
                    VStack(content: {
                        Text("Nama Wifi")
                            .font(.custom("Muli-Regular", size: 14))
                            .lineSpacing(24)
                            .padding(.top, 50).foregroundColor(Color(#colorLiteral(red: 0.3921568627, green: 0.3921568627, blue: 0.3921568627, alpha: 1)))
                            .frame(maxWidth: .infinity, alignment: .center)
                        HStack {
                            Text("Modem Rumah")
                                .font(.custom("Muli-Light", size: 24))
                                .lineSpacing(32)
                                .foregroundColor(Color(#colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1)))
                            Image(systemName: "chevron.right").foregroundColor(Color(#colorLiteral(red: 1, green: 0.3052355647, blue: 0.2890732884, alpha: 1)))
                        }
                        HStack(alignment: .center) {
                            Image("online-icon")
                                .resizable()
                                .frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Online")
                                .font(.custom("Muli-Regular", size: 14))
                                .lineSpacing(24)
                                .foregroundColor(Color(#colorLiteral(red: 0.3921568627, green: 0.3921568627, blue: 0.3921568627, alpha: 1)))
                                .offset(x: -4)
                        }
                        Text("Paket Data Saya")
                            .font(.custom("Muli-Regular", size: 18))
                            .lineSpacing(24)
                            .foregroundColor(Color(#colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1)))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 32)
                            .padding(.leading, 20)
                        
                        VStack(alignment: .center) {
                            Image("gauge")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipped()
                                .padding(.all)
                            Button(action: {
                                print("Delete tapped!")
                            }) {
                                Text("Beli Tambahan Kuota")
                                    .font(.custom("Muli-Bold", size: 16))
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1)))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color(#colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1)), lineWidth: 1)
                                    )
                                    .padding()
                            }
                        }
                        .background(Color.white)
                        .cornerRadius(16)
                        .shadow(color: Color(#colorLiteral(red: 0.09803921569, green: 0.1254901961, blue: 0.1254901961, alpha: 0.23)), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(20)
                        
                        Spacer(minLength: 900)
                        
                    }).frame(minWidth: 0,
                             maxWidth: .infinity,
                             minHeight: 0,
                             maxHeight: .infinity,
                             alignment: .topLeading
                    ).background(Color.white).padding(.top, 0).cornerRadius(40)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
