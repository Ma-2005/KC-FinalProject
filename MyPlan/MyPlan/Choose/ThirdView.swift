//
//  ThirdView.swift
//  MyPlan
//
//  Created by Mac on 03/09/2022.
//

import SwiftUI

struct ThirdView: View {
    
    var PlaceInfo : PlaceModel
    
    var body: some View {
        ZStack{
            Color("BG").ignoresSafeArea()
            VStack{
                ZStack{
                Image(PlaceInfo.Name)
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    
                    HStack{
                        Spacer()
                        Text(PlaceInfo.Name)
                            .font(.custom("Amiri-BoldItalic", size: 25))
                            .modifier(MoodTextView())
                    }
                }
               
                HStack{
                Text(PlaceInfo.Information)
                    .font(.custom("Amiri-Reguler", size: 20))
                    .modifier(MoodTextView())
                    
                Spacer()
                }
                .padding()
                
                HStack {
                    Text(PlaceInfo.timesOpen)
                        .font(.custom("Amiri-Reguler", size: 20))
                    .modifier(MoodTextView())
                    
                    Spacer()
                }.padding()
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(PlaceInfo: PlaceModel(Name: "The Maiden's Tower", Information: "The Maiden's Tower (Turkish: Kız Kulesi), also known as Leander's Tower (Tower of Leandros) since the medieval Byzantine period, is a tower on a small islet at the southern entrance of the Bosphorus strait, 200 m (220 yd) from the coast of Üsküdar in Istanbul, Turkey.", timesOpen: "Temporarily closed"))
    }
}
