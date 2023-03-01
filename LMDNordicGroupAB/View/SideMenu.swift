//
//  SideMenu.swift
//  LMDNordicGroupAB
//
//  Created by Alexander Gallorini on 2023-03-01.
//

import SwiftUI

struct SideMenu: View {
  
    @Binding var selectedTab: String
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading,spacing: 15, content: {
            Image("LMD")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .cornerRadius(10)
            //padding top for top close button
                .padding(.top,50)
            
            VStack(alignment: .leading,spacing: 6, content: {
                
                Text("LMD")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                TabButton(image: "", title:
                            "Om oss", selectedTab: $selectedTab,
                          animation: animation)
                .padding(.horizontal,-20)
                })
            
            //tab buttons
            VStack(alignment: .leading, spacing: 10){
                
                

                TabButton(image: "arrowshape.turn.up.forward", title: "Go tillbaka", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "syringe", title:
                            "Behandlingar", selectedTab: $selectedTab,
                          animation: animation)
                
                TabButton(image: "calendar.badge.clock", title:
                            "Bokningar", selectedTab: $selectedTab,
                          animation: animation)
                
                TabButton(image: "clock.arrow.circlepath", title:
                            "Historik", selectedTab: $selectedTab,
                          animation: animation)
                
//                TabButton(image: "bell.badge", title:
//                            "Notifikationer", selectedTab: $selectedTab,
//                          animation: animation)
//                
//                TabButton(image: "questionmark.circle", title:
//                            "Hjälpcenter", selectedTab: $selectedTab,
//                          animation: animation)
                
                
            }
            .padding(.leading, -15)
            .padding(.top,50)
            
            Spacer()
            
            //sign out button
            VStack{
                TabButton(image: "rectangle.righthalf.inset.fill.arrow.right", title: "Logga ut", selectedTab: .constant(""), animation: animation)
                    .padding(.leading,-15)
                
                Text("App version 0.0.1")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .opacity(0.6)
            }
            
           
        })
        .padding()
        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
        
    }
  }
struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainView()


    }
}
