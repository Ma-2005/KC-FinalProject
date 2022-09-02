//
//  TripView.swift
//  MyPlan
//
//  Created by Mac on 02/09/2022.
//

import SwiftUI

struct  TripView: View {
    
    @State var titel : String
    
    var body: some View {
       
            Text(titel)
                .font(.custom("Amiri-BoldItalic", size: 35))
                .foregroundColor(.black)
                .frame(width: 285, height:100)
                .background(.white.opacity(0.4))
                .cornerRadius(25)
        
    }
}
//
//struct TripView_Previews: PreviewProvider {
//    static var previews: some View {
//        TripView()
//    }
//}
