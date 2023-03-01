//
//  CustomCorners.swift
//  LMDNordicGroupAB
//
//  Created by Alexander Gallorini on 2023-03-01.
//

import SwiftUI

//custom corners shapes
struct CustomCorners: Shape {
    
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect,byRoundingCorners: corners, cornerRadii:
            CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}
