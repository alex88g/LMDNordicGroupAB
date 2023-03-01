//
//  HomeView.swift
//  LMDNordicGroupAB
//
//  Created by Alexander Gallorini on 2023-03-01.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Color("Blue")
                .ignoresSafeArea()
            VStack(alignment: .leading,spacing: 0){
                
                Button(action: {
                    
                }){
                    Link(destination: URL(string: "https://lmdnordic.se/")!) {
                        
                        Text("Besök vår LMD hemsida")
                            .foregroundColor(.white)
                    }
                    .padding(.leading)
                }
                
                VStack(alignment: .leading,spacing: 5, content: {
                    
                    Image("Image1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: getRect().width - 50, height: 300)
                        .cornerRadius(10)
                    //padding top for top close button
                    //                        .padding(.top,50)
                    
                    
                    
                    //                Text("LMD Nordic är verksamhet med spetsad kompetens av erfarna personal som är utbildade och specialiserade inom skönhetsbehandlings område. Vi finns här för er edan år 2020. Vill du korrigera och ändra utsieende samt se naturligt ut tveka inte höra av er. Ert LMD Nordic ")
                    //                    .font(.caption)
                    //                    .fontWeight(.semibold)
                    //                    .foregroundColor(.gray)
                    
                })
                .padding()
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
