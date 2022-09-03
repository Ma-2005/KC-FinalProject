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
                            .foregroundColor(.black)
                            .padding()
                            .background(.white.opacity(0.4))
                            .cornerRadius(15)
                    }
                }
               
                HStack{
                Text(PlaceInfo.Information)
                    .font(.custom("Amiri-Reguler", size: 20))
                    .modifier(MoodTextView())
                    
                Spacer()
                }
                .padding()
                
                Spacer()
            }
        }
        
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(PlaceInfo: PlaceModel(Name: "Bosphorus", Information: "   The Bosphorus Strait or Bosporus Strait is a natural strait and an internationally significant waterway located in northwestern Turkey. It forms part of the continental boundary between Asia and Europe, and divides Turkey by separating Anatolia from Thrace.", timesOpen: "m"))
    }
}
