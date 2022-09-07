//
//  ThirdView.swift
//  MyPlan
//
//  Created by Mac on 03/09/2022.
//

import SwiftUI

struct ThirdView: View {
    
    @Binding var PlaceInfo : PlaceModel
    
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
                VStack{
                    HStack{
                        Text("Place info :")
                            .font(.custom("Amiri-BoldItalic", size: 20))
                        .modifier(MoodTextView())
                        
                        Spacer()
                }
                HStack {
                    Text(PlaceInfo.Information)
                        .font(.custom("Amiri-Regular", size: 16))
                        .frame(alignment: .topLeading)
                    
                    Spacer()
                }.padding()
                }
                                
                VStack {
                    HStack{
                        Text("Open time : ")
                            .font(.custom("Amiri-BoldItalic", size: 20))
                        .modifier(MoodTextView())
                        
                        
                        Spacer()
                }
                HStack {
                    Text(PlaceInfo.timesOpen)
                        .font(.custom("Amiri-Regular", size: 26))
                        .frame(alignment: .topLeading)
                    
                    Spacer()
                }.padding()
                }
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

//struct ThirdView_Previews: PreviewProvider {
//    static var previews: some View {
//        ThirdView(PlaceInfo: )
//    }
//}
