//
//  MainPage.swift
//  Bankey
//
//  Created by Evan Lu on 2024/6/15.
//

import SwiftUI

struct MainPage: View {
    
    @State private var selectedTab = 0
   
    
    var body: some View {
        GeometryReader{ proxy in
            VStack(alignment: .center, spacing: 0){
                
                if selectedTab == 0 {
                    
                    InfoView(proxyWidth: proxy.size.width, proxyHeight: proxy.size.height)
                    
                }
                else if selectedTab == 1 {
                    
                    LessonView(proxyWidth: proxy.size.width, proxyHeight: proxy.size.height)
                }
                
                else if selectedTab == 2 {
                    
                    TaskView(proxyWidth: proxy.size.width, proxyHeight: proxy.size.height)
                    
                }
                
                HStack(){
                    
                    Spacer().frame(width: 0, height: 0)
                    
                    Button(action: {selectedTab = 0}, label: {
                        
                        TabIcon(isOn: selectedTab == 0,
                                iconName: "house",
                                colorName: "Red")
                        
                    }).buttonStyle(
                        TabButtonStyle(isOn: selectedTab == 0,
                                       proxyWidth: proxy.size.width,
                                       proxyHeight: proxy.size.height)
                    )
                    
                        Spacer().frame(width: 0, height: 0)
            
                    Button(action: {selectedTab = 1}, label: {
                        
                        TabIcon(isOn: selectedTab == 1,
                                iconName: "book",
                                colorName: "Brilliant Azure")
                        
                    }).buttonStyle(
                        TabButtonStyle(isOn: selectedTab == 1,
                                       proxyWidth: proxy.size.width,
                                       proxyHeight: proxy.size.height)
                    )
                    
                    Spacer().frame(width: 0, height: 0)
                    
                    Button(action: {selectedTab = 2}, label: {
                        
                        TabIcon(isOn: selectedTab == 2,
                                iconName: "list.bullet",
                                colorName: "Verdigris")
                        
                    }).buttonStyle(
                        TabButtonStyle(isOn: selectedTab == 2,
                                       proxyWidth: proxy.size.width,
                                       proxyHeight: proxy.size.height))
                    
                    Spacer().frame(width: 0, height: 0)
                }.frame(width: proxy.size.width, alignment: .bottom)
                    .background(Color.gray)
                
            }
        }
    }
}

struct TabIcon: View {
    
    var isOn: Bool
    var iconName: String
    var colorName: String
    
    var body: some View {
        
        if isOn {
            ZStack{
                        Circle()
                            .foregroundStyle(Color(colorName))
                            .frame(width: 60, height: 60, alignment: .center)
                        Image(systemName: iconName)
                            .foregroundStyle(Color.white)
                            .frame(width: 30, height: 30, alignment: .center)
                    }.frame(alignment: .center)
        }
        else
        {
            ZStack{
                        Circle()
                            .foregroundStyle(Color("Philippine Silver"))
                            .frame(width: 60, height: 60, alignment: .center)
                        Image(systemName: iconName)
                            .foregroundStyle(Color.white)
                            .frame(width: 30, height: 30, alignment: .center)
                    }.frame(alignment: .center)
        }
        
    }
    
    
}

struct TabButtonStyle: ButtonStyle {
    var isOn: Bool
    var proxyWidth: CGFloat
    var proxyHeight: CGFloat
    func makeBody(configuration: Self.Configuration) -> some View {
        if isOn {
            configuration.label.frame(width: proxyWidth / 3, height: proxyHeight * 0.14388489208633, alignment: .center)
                        .padding(.vertical, 30)
                        .background(Color("Anti-Flash White"))
                        .border(Color("White"), width: 4)
        }
        else {
            configuration.label.frame(width: proxyWidth / 3, height: proxyHeight * 0.14388489208633, alignment: .center)
                        .padding(.vertical, 30)
                        .background(Color("Light Silver"))
        }
        
           
        
    }
}



#Preview {
    TabView {
        MainPage()
    }
}


