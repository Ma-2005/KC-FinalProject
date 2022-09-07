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
                .font(.custom("Amiri-Bold", size: 20))
                .foregroundColor(.white)
                .frame(width: 350, height:70)
                .background(Color("BG"))
                .cornerRadius(12)
        
    }
}
//
//struct TripView_Previews: PreviewProvider {
//    static var previews: some View {
//        TripView()
//    }
//}
