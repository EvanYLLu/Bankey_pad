//
//  GiftView.swift
//  Bankey
//
//  Created by Evan Lu on 2024/6/18.
//

import SwiftUI

struct GiftView: View {
    
    var proxyWidth: CGFloat
    var proxyHeight: CGFloat
    
    var body: some View {
        
        VStack{
            
            ZStack{
                
                Circle()
                    .foregroundStyle(Color("Light Silver"))
                    .frame(width: (proxyWidth * 0.12562814070352) + 10 )
                
                Circle()
                    .foregroundStyle(Color("White"))
                    .frame(width: proxyWidth * 0.12562814070352)
                    .shadow(radius: 3, x: 6, y: 6)
                
                Image("gift")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color("Gray"))
                    .frame(width: proxyWidth * 0.083752093802345)
                    
            }.overlay(alignment: .bottomTrailing) {
                ZStack{
                    Rectangle()
                        .frame(width: proxyWidth * 0.083752093802345, height: proxyHeight * 0.047961630695444)
                        .foregroundStyle(Color.white)
                        .cornerRadius((proxyHeight * 0.047961630695444)/2)
                        .shadow(radius: 3, x: 6, y: 6)
                    Text("0"+"$")
                }.offset(x: 30, y: 14)
            }
            
            ZStack{
                Rectangle()
                    .frame(width: proxyWidth * 0.34338358458961, height: proxyHeight * 0.043165467625899)
                    .foregroundStyle(Color.white)
                    .cornerRadius((proxyHeight * 0.043165467625899) / 2)
                    .shadow(radius: 3, x: 6, y: 6)
                
                HStack{
                    Text("There are the other condition...")
                        .font(.headline)
                        .padding(.vertical, 8.5)
                        .padding(.leading, (proxyHeight * 0.043165467625899) / 2)
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "info.circle.fill")
                            .foregroundStyle(Color.black)
                    })
                    .frame(height: proxyHeight * 0.035971223021583)
                    .padding(.trailing, proxyWidth * 0.0025125628140704)
                    
                }.frame(width: proxyWidth * 0.34338358458961, height: proxyHeight * 0.043165467625899)
            }.padding(.top, proxyHeight * 0.033573141486811)
            
            Button(action: {}, label: {
                ZStack{
                    Rectangle()
                        .frame(width: proxyWidth * 0.34338358458961, height: proxyHeight * 0.065947242206235)
                        .foregroundStyle(Color("Red"))
                        .cornerRadius(20)
                        .shadow(radius: 3, x: 6, y: 6)
                    
                    Text("Buy Now!")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                        
                }
            })
            .padding(.top, proxyWidth *  0.028776978417266)
            
            Button(action: {}, label: {
              
                HStack{
                    Spacer()
                    
                    Text("See what else you can afford!")
                        .font(.title2)
                        .foregroundStyle(Color.blue)
                    
                    Image(systemName: "arrow.right")
                        .foregroundStyle(Color.blue)
                        .padding(.leading, 12)
                }
                
            }).padding(.trailing, 28)
                .padding(.top, proxyHeight *  0.079136690647482)
            
            
        }.frame(width: proxyWidth * 0.40201005025126, height: proxyHeight * 0.59952038369305)
            .background(Color("Anti-Flash White"))
            .cornerRadius(50)
            .overlay(alignment: .topTrailing) {
                
                Button(action: {}, label: {
                                                ZStack {
                                                    
                                                    
                                                    Circle().frame(width: proxyWidth * 0.041876046901173)
                                                        .foregroundStyle(Color("Red"))
                                                        .shadow(radius: 3, x: 6, y: 6)
                                                    
                                                    Image(systemName: "list.clipboard")
                                                        .foregroundStyle(Color("White"))
                                                }
                                            }).padding(.top, 20)
                                                .padding(.trailing, 20)
            }
            //.padding(.leading, proxyWidth * 0.0335008375209383)
        
   
        
        
    }
}

