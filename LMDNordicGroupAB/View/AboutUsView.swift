//
//  AboutUsView.swift
//  LMDNordicGroupAB
//
//  Created by Alexander Gallorini on 2023-03-01.
//

import SwiftUI

struct AboutUsView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 20){
            
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: getRect().width - 50, height: 400)
                .cornerRadius(10)
            //padding top for top close button
                .padding(.top,50)
            
            VStack(alignment: .leading,spacing: 5, content: {
                
                Text("LMD Nordic ")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Text("LMD Nordic är verksamhet med spetsad kompetens av erfarna personal som är utbildade och specialiserade inom skönhetsbehandlings område. Vi finns här för er edan år 2020. Vill du korrigera och ändra utsieende samt se naturligt ut tveka inte höra av er. Ert LMD Nordic ")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
            })
            .padding()
        }
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
