//
//  HomeView.swift
//  LMDNordicGroupAB
//
//  Created by Alexander Gallorini on 2023-03-01.
//

import SwiftUI

struct HomeView: View {
    
    @State private var currentIndex = 0
    private var numberOfImages = 3
    private let timer = Timer.publish(every: 2, on: .main, in: .common
    ).autoconnect()
    
    
    var body: some View {
        VStack (spacing: 80){
            Spacer()
            GeometryReader { proxy in
                TabView(selection: $currentIndex) {
                    ForEach(0..<numberOfImages) { num in
                        
                        //                        Image("\(num)")
                        Image("LMD1")
                        Image("LMD3")
                        Image("LMD2")
                        
                            .resizable()
                            .scaledToFill()
                            .overlay(Color.black.opacity(0.4))
                            .tag(num)
                    }
                }.tabViewStyle(PageTabViewStyle())
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding()
                    .frame(width: 380, height:300)
                    .onReceive(timer, perform: { _ in
                        next()
                        
                    })
                
                VStack(alignment: .leading,spacing: 5){
                    
                    Spacer()
                    Button(action: {
                        
                    }){
                        Link(destination: URL(string: "https://lmdnordic.se/")!) {
                            
                            Text("Besök vår LMD hemsida")
                                .foregroundColor(.blue)
                                .font(.caption)
                               
                            Image(systemName: "arrow.backward.circle")
                                .foregroundColor(.black)
                        }}
                           
                            
               
                        
                    Image("Image1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 150)
                        .cornerRadius(10)
                   
                }
                .padding(.vertical,280)
                .padding(.leading)
                
            }
            
            Text("LMD Nordic erbjuder ett flertal olika injektionsbehandlingar som Btx, Fillers samt Peelingar för att förbättra och föryngra ditt utseende på ett naturligt sätt. Våra behandlare använder sig av de senaste teknikerna, metoderna och produkterna för bästa resultat. Alla behandlare har dokumenterad specialkompetens i respektive område.")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .padding(.leading)
                .padding(.trailing)
                .padding(.vertical,40)
                
            //            controls
//            Spacer()
//            Spacer()
            
        }
        
    }
    
    func previous() {
        withAnimation {
            currentIndex = currentIndex > 0 ? currentIndex
            - 1 : numberOfImages  - 1
        }
    }
    
    func next() {
        withAnimation {
            currentIndex = currentIndex <
                numberOfImages ? currentIndex + 1 : 0
        }
        
       
        //    var controls: some View {
        //        HStack {
        //            Button {
        //                previous()
        //            } label: {
        //                Image(systemName: "chevron.left")
        //                    .fontWeight(.bold)
        //                    .foregroundColor(.black)
        //            }
        //            Button {
        //                next()
        //            } label: {
        //                Image(systemName: "chevron.right")
        //                    .fontWeight(.bold)
        //                    .foregroundColor(.black)
        //
        //            }
        //        }
        //    }}
        
        //padding top for top close button
        //                        .padding(.top,50)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
