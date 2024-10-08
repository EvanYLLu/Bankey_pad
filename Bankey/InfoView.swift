//
//  InfoView.swift
//  Bankey
//
//  Created by Evan Lu on 2024/6/16.
//

import SwiftUI
import Charts

struct InfoView: View {
    
    var proxyWidth: CGFloat
    var proxyHeight: CGFloat
    
    var body: some View {
        
        VStack(alignment: .center) {
            Spacer().frame(height: proxyHeight * 0.06235012)
            
            HStack(alignment: .center){
                VStack(alignment: .center, spacing: proxyHeight * 0.019184652278177){
                    
                    VStack(alignment: .leading, spacing: proxyHeight * 0.019184652278177){
                        
                        Text("Your Deposit")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(Color("Red"))
                            .padding(.top, 4)
                        
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
                            
                        }.frame(width: proxyWidth * 0.37437185929648, height: proxyHeight * 0.093525179856115)
                            .background(Color("White"))
                            .cornerRadius(20)
                            .shadow(radius: 3, x: 6, y: 6)
                        
                        Text("Asset Changes")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        ChartsView().frame(width: proxyWidth * 0.37437185929648, height: proxyHeight * 0.27338129496403)
                            .background(Color("White"))
                            .cornerRadius(20)
                            .shadow(radius: 3, x: 6, y: 6)
                        
                    }
                    
                    Text("\(Text("Your property is").coloredText(.black).font(.headline))\(Text("+3.14%").coloredText(.green).font(.title3))\(Text("than last month!").coloredText(.black).font(.headline))").padding(.top, 12)
                    
                    Button(action: {}, label: {
                        
                        Text("Check More")
                            .fontWeight(.bold)
                            .foregroundColor(Color("White"))
                        
                    }).frame(width: proxyWidth * 0.14438860971524, height: proxyHeight * 0.047961630695444)
                        .background(Color("Brilliant Azure"))
                        .cornerRadius(5)
                        .shadow(radius: 3, x: 6, y: 6)
                    
                    Text("One more 9,300$ you will achieve \n Hundred Thousand deposit!")
                        .lineLimit(2)
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)

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
                    
                    GiftView(proxyWidth: proxyWidth, proxyHeight: proxyHeight)
                    
                }.frame(width: proxyWidth * 0.40201005025126)
                .padding(.trailing, proxyWidth * 0.041876046901173)
                
            }.frame(width: proxyWidth)
                //.padding(.horizontal, proxyWidth * 0.083752093802345)
            
            Spacer().frame(height: proxyHeight * 0.06235012)
        }.frame(width: proxyWidth)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("Fiery Rose"), Color("Red")]), startPoint: .top, endPoint: .bottom)
        )
    }
}


struct ChartsView: View {
    var orders: [Order] = [
        Order(amount: 10, day: 1),
        Order(amount: 7, day: 2),
        Order(amount: 4, day: 3),
        Order(amount: 13, day: 4),
        Order(amount: 19, day: 5),
        Order(amount: 6, day: 6),
        Order(amount: 16, day: 7)
    ]
    
    var body: some View {
        Chart {
            
            ForEach(orders) { order in
                LineMark(
                    x: PlottableValue.value("Month", order.day),
                    y: PlottableValue.value("Orders", order.amount)
                )
                
            }
        }.padding(20)
    }
}


extension Text {
    func coloredText(_ color: Color) -> Text {
        self.foregroundColor(color)
    }
}
