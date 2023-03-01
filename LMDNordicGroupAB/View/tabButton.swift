//
//  tabButton.swift
//  LMDNordicGroupAB
//
//  Created by Alexander Gallorini on 2023-03-01.
//

import SwiftUI

struct TabButton: View {
    var image: String
    var title: String
    
    //selected tab
    @Binding var selectedTab: String
    // for hero animation slide
    var animation: Namespace.ID
    
    var body: some View {
       
        Button(action: {
            
            withAnimation(.spring()){selectedTab = title}
            
        },label:{
            
            HStack(spacing: 10){
                Image(systemName: image)
                    .font(.title2)
                
                Text(title)
                    .fontWeight(.semibold)
            }
            .foregroundColor(selectedTab == title ? Color("Blue"): .white)
                    .padding(.vertical,12)
                    .padding(.horizontal,10)
                //max frame
                    .frame(maxWidth: getRect().width - 170, alignment: .leading)
                    .background(
                        
                        //hero animation
                        ZStack{
                            
                            if selectedTab == title{
                                Color.white
                                    .opacity(selectedTab == title ? 1 : 0)
                                    .clipShape(CustomCorners(corners: [.topRight,.bottomRight], radius: 12)).matchedGeometryEffect(id: "TAB", in: animation)
                            }
                        }
                )
            })
            
        }
    }


struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
