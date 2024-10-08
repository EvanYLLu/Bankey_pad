//
//  TaskView.swift
//  Bankey
//
//  Created by Evan Lu on 2024/6/18.
//

import SwiftUI

struct TaskView: View {
    
    var proxyWidth: CGFloat
    var proxyHeight: CGFloat
    
    var body: some View {
        
        VStack(alignment: .center) {
            Spacer().frame(height: proxyHeight * 0.06235012)
            
            HStack(alignment: .center){
                VStack(alignment: .center, spacing: proxyHeight * 0.019184652278177){
                    
                    Text("TASK LIST")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(Color("Deep Space Sparkle"))
                        .padding(.top, 40)
                    
                    VStack(alignment: .leading, spacing: proxyHeight * 0.019184652278177){
                        
                            
                            Spacer()
                            
                           
                        
                    }
                    
                    Spacer()
                    
                    
                }.frame(width: proxyWidth * 0.44137353433836, height: proxyHeight * 0.73141486810552)
                    .background(Color("Anti-Flash White"))
                    .cornerRadius(50)
                    .padding(.leading, proxyWidth * 0.0335008375209383)
                
                Spacer().frame(width: proxyWidth * 0.07286432160804)
                
                VStack{
                    HStack(alignment: .center){
                        
                        Text("$")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading, 54)
                        
                        Spacer()
                        
                        Text("0")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.trailing, proxyWidth * 0.037688442211055)
                        
                    }.frame(width: proxyWidth * 0.40201005025126, height: proxyHeight * 0.095923261390887)
                        .background(Color("White"))
                        .cornerRadius((proxyHeight * 0.095923261390887)/2)
                        
                    Spacer().frame(height: proxyHeight * 0.040767386091127)
                    
                    Spacer()
                    
                }.frame(width: proxyWidth * 0.40201005025126)
                .padding(.trailing, proxyWidth * 0.041876046901173)
                
            }.frame(width: proxyWidth)
                //.padding(.horizontal, proxyWidth * 0.083752093802345)
            
            Spacer().frame(height: proxyHeight * 0.06235012)
        }.frame(width: proxyWidth)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("Verdigris"), Color("Deep Space Sparkle")]), startPoint: .top, endPoint: .bottom)
        )
    }
}

