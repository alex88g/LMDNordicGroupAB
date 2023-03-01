//
//  Home.swift
//  LMDNordicGroupAB
//
//  Created by Alexander Gallorini on 2023-03-01.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
    
    //hiding tab bar
    init(selectedTab: Binding<String>){
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = false
    }
    
    var body: some View {
       
        //tab view with tabs
        TabView(selection: $selectedTab){
            
            //Views
         BackToMainView()
                .tag("Home")
            
            Behandlingar()
                .tag("Behandlingar")
            
            Bokningar()
                .tag("Bokningar")
            
            Historik()
                .tag("Historik")
            
            Notifikationer()
                .tag("Notifikationer")

            Hjälpcenter()
                .tag("Hjälpcenter")
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
// all sub views
struct BackToMainView: View {
    
    var body: some View{
        
 
        NavigationView{
    
                    VStack {
                      
                        TabView {
                            
                                HomeView()
                                .tabItem{
                                    Image(systemName: "house.fill")
                                    Text("Home")
            //                        .foregroundColor(scheme == .dark ? Color.black : Color.white)
                                    

                                }
                            MapView()
                                .tabItem{
                                    Image(systemName: "map.fill")
                                    Text("Map")

                                }
                            FavoriteView()
                                .tabItem{
                                    Image(systemName: "suit.heart")
                                    Text("Favorite")

                                }
                            SettingsView()
                                .tabItem{
                                    Image(systemName: "gearshape.fill")
                                    Text("Settings")
                                    
                                }
                            }
                        
                        }
                    }
                }
            }
    
struct Behandlingar: View {
    
    var body: some View{
        
        NavigationView{
            
//            Text("Behandlingar")
//                .font(.largeTitle)
//                .fontWeight(.heavy)
//                .foregroundColor(.primary)
//                .navigationTitle("Behandligar")
        }
    }
    
}
struct Bokningar: View {
    
    var body: some View{
        
        NavigationView{
            
//            Text("Bokningar")
//                .font(.largeTitle)
//                .fontWeight(.heavy)
//                .foregroundColor(.primary)
//                .navigationTitle("Bokningar")
        }
    }
    
}

struct Historik: View {
    
    var body: some View{
        
        NavigationView{
            
//            Text("Historik")
//                .font(.largeTitle)
//                .fontWeight(.heavy)
//                .foregroundColor(.primary)
//                .navigationTitle("Historik")
        }
    }
    
}

struct Notifikationer: View {
    
    var body: some View{
        
        NavigationView{
            
//            Text("Notifikationer")
//                .font(.largeTitle)
//                .fontWeight(.heavy)
//                .foregroundColor(.primary)
//                .navigationTitle("Notifikationer")
        }
    }
    
}

struct Hjälpcenter: View {
    
    var body: some View{
        
        NavigationView{
            
//            Text("Hjälpcenter")
//                .font(.largeTitle)
//                .fontWeight(.heavy)
//                .foregroundColor(.primary)
//                .navigationTitle("Hjälpcenter")
        }
    }
    
}
