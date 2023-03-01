//
//  MainView.swift
//  LMDNordicGroupAB
//
//  Created by Alexander Gallorini on 2023-03-01.
//

import SwiftUI

struct MainView: View {
    //selected tab
    @State var selectedTab = "Home"
    @State var showMenu = false
   
    var body: some View {
        
        ZStack{
            Color("Blue")
                .ignoresSafeArea()
            
            //side menu
            ScrollView(getRect().height < 750 ? .vertical : .init(),showsIndicators: false,
                       content: {
                
                SideMenu(selectedTab: $selectedTab)
            })
            ZStack{
                
                //two backgrounds cards
                
                Color.white
                    .opacity(0.5)
                    .cornerRadius(showMenu ? 15 : 0)
                //shadow
                    .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0)
                    .offset(x: showMenu ? -25 : 0)
                    .padding(.vertical,30)
                
                Color.white
                    .opacity(0.5)
                    .cornerRadius(showMenu ? 15 : 0)
                //shadow
                    .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0)
                    .offset(x: showMenu ? -50 : 0)
                    .padding(.vertical,60)
                
                Home(selectedTab: $selectedTab)
                    .cornerRadius(showMenu ? 15 : 0)
                  
            }
            //scaling and moving the view
            .scaleEffect(showMenu ? 0.84 : 1)
            .offset(x: showMenu ? getRect().width - 120 : 0)
            .ignoresSafeArea()
            .overlay(
            
            //menu button
            Button(action: {
                withAnimation(.spring()){
                    showMenu.toggle()
                }
                
            }, label: {
                //animated driver button
                VStack(spacing: 5){
                    
                    Capsule()
                        .fill(showMenu ? Color.white : Color.primary)
                        .frame(width: 30,height: 3)
                    //rotating
                        .rotationEffect(.init(degrees: showMenu ? -50 : 0))
                        .offset(x: showMenu ? 2 : 0, y: showMenu ? 9 : 0)
                    
                    VStack(spacing: 5){
                        
                        Capsule()
                            .fill(showMenu ? Color.white : Color.primary)
                            .frame(width: 30,height: 3)
                        //moving up when clicked
                        Capsule()
                            .fill(showMenu ? Color.white : Color.primary)
                            .frame(width: 30,height: 3)
                            .offset(y: showMenu ? -8 : 0)
                    }
                    
                    .rotationEffect(.init(degrees: showMenu ? 50 : 0))
                    
                }
            })
            .padding()
            
            ,alignment: .topLeading
        )
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
//extending view to get screen size
extension View{
    
    func getRect()->CGRect{
        
        return UIScreen.main.bounds
    }
}

