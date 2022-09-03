//
//  timeView.swift
//  MyPlan
//
//  Created by Mac on 04/09/2022.
//

import SwiftUI

struct timeView: View {
    
    @State var title1 : String
    
    @State var input1 : String
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Text("\(title1) :")
                .font(.custom("Amiri-BoldItalic", size: 26))
                .frame(width:130, height: 75)
            Spacer()
            TextField(("    \(title1)") , text: $input1 )
                .font(.custom("Amiri-Bold", size: 26))
                .frame(width:150, height: 65)
                .background()
                .cornerRadius(15)
        }
    }
}
