//
//  LessonView.swift
//  Bankey
//
//  Created by Evan Lu on 2024/6/18.
//

import SwiftUI

struct LessonView: View {
    
    var proxyWidth: CGFloat
    var proxyHeight: CGFloat
    
    var body: some View {
        
            
            HStack(spacing: 0) {
                
                VStack(alignment: .center, spacing: 0) {
                    
                    ZStack{
                        Circle()
                            .frame(height: proxyHeight * 0.14388489208633)
                            .foregroundColor(Color("Brilliant Azure"))
                        
                        Image("Emily")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(height: (proxyHeight * 0.14388489208633) - 2)
                          .foregroundColor(.white)
                          .background(Color.green)
                          .clipShape(Circle())
                        
                    }.padding(.top, proxyHeight * 0.071942446043165)
                    
                   
                      
                    
                    HStack(spacing: 4) {
                        
                        ZStack{
                            Circle()
                                .frame(height: proxyHeight * 0.028776978417266)
                                .foregroundColor(Color("Verdigris"))
                            
                            Image("piggy-bank.png")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: proxyHeight * 0.019184652278177)
                                .foregroundColor(.white)
                                .background(Color("Verdigris"))
                                .clipShape(Circle())
                            
                        }
                        
                        ZStack{
                            Circle()
                                .frame(height: proxyHeight * 0.028776978417266)
                                .foregroundColor(Color("Fiery Rose"))
                            
                            Image("salary.png")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: proxyHeight * 0.019184652278177)
                                .foregroundColor(.white)
                                .background(Color("Fiery Rose"))
                                .clipShape(Circle())
                            
                        }
                        
                        ZStack{
                            Circle()
                                .frame(height: proxyHeight * 0.028776978417266)
                                .foregroundColor(Color("Sea Green"))
                            
                            Image("suitcase.png")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: proxyHeight * 0.019184652278177)
                                .foregroundColor(.white)
                                .background(Color("Sea Green"))
                                .clipShape(Circle())
                            
                        }
                        
                        ZStack{
                            Circle()
                                .frame(height: proxyHeight * 0.028776978417266)
                                .foregroundColor(Color("American Yellow"))
                            
                            Image("increase.png")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: proxyHeight * 0.019184652278177)
                                .foregroundColor(.white)
                                .background(Color("American Yellow"))
                                .clipShape(Circle())
                            
                        }
                        
                        ZStack{
                            Circle()
                                .frame(height: proxyHeight * 0.028776978417266)
                                .foregroundColor(Color("Philippine Silver"))
                            
                            Image("shield.png")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: proxyHeight * 0.019184652278177)
                                .foregroundColor(.white)
                                .background(Color("Philippine Silver"))
                                .clipShape(Circle())
                            
                        }
                        
                        ZStack{
                            Circle()
                                .frame(height: proxyHeight * 0.028776978417266)
                                .foregroundColor(Color("Amaranth Purple"))
                            
                            Image("book.png")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: proxyHeight * 0.019184652278177)
                                .foregroundColor(.white)
                                .background(Color("Amaranth Purple"))
                                .clipShape(Circle())
                            
                        }
                        
                        
                    } .frame(width: proxyWidth * 0.13735343383585, height: proxyHeight *  0.079136690647482)
                        .padding(.vertical, proxyHeight * 0.02158273381295)
                       
                    
                    Text("Emily")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(Color("Brilliant Azure"))
                        .frame(height: proxyHeight * 0.035971223021583)
                        .padding(.bottom, proxyHeight * 0.033573141486811)
                    
                    Text("Here are some stories \n will help you make some \n sense about financial \n knowledge.")
                        .lineLimit(4)
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .frame(width: proxyWidth * 0.19430485762144, height: proxyHeight * 0.13549160671463)
                    
                    Spacer()//.frame(height: proxyHeight * 0.1966426858513)
                    
                    Text("Some vocabulary might \n be difficult for children. \n Please ask parent be \n your partner when you \n read.  ")
                        .lineLimit(5)
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .frame(width: proxyWidth * 0.19430485762144, height: proxyHeight * 0.17)
                        .padding(.bottom, 20)
                    

                    
                }.frame(width: proxyWidth * 0.25125628140704, height: proxyHeight * 0.85611510791367)
                .background(
                    Color("Anti-Flash White")
                    )
                
                VStack{
                    
                    HStack{
                        Spacer()
                        Text("Progress")
                            .fontWeight(.bold)
                            .font(.title2)
                            .foregroundStyle(.white)
                            .padding(.trailing, 18)
                        
                        ZStack{
                            
                            ZStack(alignment: .leading){
                                Rectangle().frame(width: proxyWidth * 0.33500837520938, height: proxyHeight * 0.057553956834532)
                                    .foregroundStyle(Color("Light Silver"))
                                    .cornerRadius(20)
                                
                                Rectangle().frame(width: (proxyWidth * 0.33500837520938) / 2, height: proxyHeight * 0.057553956834532)
                                    .foregroundStyle(Color("Ripe Mango"))
                                    .cornerRadius(20)
                            }
                            
                            Text("50%")
                                .fontWeight(.bold)
                                .font(.title3)
                        }.padding(.trailing, 24)
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 0){
                        
                        Text("Financial Literacy")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundStyle(.white)
                            .padding(.top, 62)
                            .padding(.leading, 28)
                        
                        VStack{
                            
                            HStack(spacing: 28){
                                ZStack{
                                    
                                    Rectangle().frame(width: proxyWidth * 0.20100502512563, height: proxyHeight * 0.2158273381295)
                                        .cornerRadius(20)
                                        .foregroundColor(Color("Verdigris"))
                                    
                                    Image("piggy-bank.png")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: (proxyHeight * 0.2158273381295) - 60)
                                        .shadow(radius: 3, x: 6, y: 6)
                                    
                                    
                                }
                                
                                ZStack{
                                    
                                    Rectangle().frame(width: proxyWidth * 0.20100502512563, height: proxyHeight * 0.2158273381295)
                                        .cornerRadius(20)
                                        .foregroundColor(Color("Fiery Rose"))
                                    
                                    Image("salary.png")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: (proxyHeight * 0.2158273381295) - 60)
                                        .shadow(radius: 3, x: 6, y: 6)
                                    
                                    
                                }
                                
                                ZStack{
                                    
                                    Rectangle().frame(width: proxyWidth * 0.20100502512563, height: proxyHeight * 0.2158273381295)
                                        .cornerRadius(20)
                                        .foregroundColor(Color("Sea Green"))
                                    
                                    Image("suitcase.png")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: (proxyHeight * 0.2158273381295) - 60)
                                        .shadow(radius: 3, x: 6, y: 6)
                                    
                                    
                                }
                            }
                            
                            Spacer().frame(height: 28)
                            
                            HStack(spacing: 28){
                                
                                ZStack{
                                    
                                    Rectangle().frame(width: proxyWidth * 0.20100502512563, height: proxyHeight * 0.2158273381295)
                                        .cornerRadius(20)
                                        .foregroundColor(Color("American Yellow"))
                                    
                                    Image("increase.png")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: (proxyHeight * 0.2158273381295) - 60)
                                        .shadow(radius: 3, x: 6, y: 6)
                                    
                                    
                                }
                                
                                ZStack{
                                    
                                    Rectangle().frame(width: proxyWidth * 0.20100502512563, height: proxyHeight * 0.2158273381295)
                                        .cornerRadius(20)
                                        .foregroundColor(Color("Philippine Silver"))
                                    
                                    Image("shield.png")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: (proxyHeight * 0.2158273381295) - 60)
                                        .shadow(radius: 3, x: 6, y: 6)
                                    
                                    
                                }
                                
                                ZStack{
                                    
                                    Rectangle().frame(width: proxyWidth * 0.20100502512563, height: proxyHeight * 0.2158273381295)
                                        .cornerRadius(20)
                                        .foregroundColor(Color("Amaranth Purple"))
                                    
                                    Image("book.png")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: (proxyHeight * 0.2158273381295) - 60)
                                        .shadow(radius: 3, x: 6, y: 6)
                                    
                                    
                                }
                                
                            }
                            
                        }.padding(.top, 34)
                            .padding(.leading, 28)
                    }
                    
                    
                }
                .frame(width: proxyWidth * 0.74874371859, height: proxyHeight * 0.85611510791367)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color("Brilliant Azure"), Color("Ultramarine Blue")]), startPoint: .top, endPoint: .bottom)
                )

                
            }.frame(width: proxyWidth, height: proxyHeight * 0.85611510791367)
                
        
        
 
        
    }
}

