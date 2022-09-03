//
//  ChooseView.swift
//  MyPlan
//
//  Created by Mac on 29/08/2022.
//

import SwiftUI

struct ChooseView: View {
    
    @State var Turkey = ["H1","H2","H3","H4","H5","H6","H7"]
    
    @State var Plans = [
        
        PlanModel(Country: "Turkey", Region: [RegionModel(NameRegion: "Istanbul", Places: ["H1","H2"]),RegionModel(NameRegion: "Antalya", Places: ["H3","H4"])], Days: 7),
        
        PlanModel(Country: "UAE", Region: [RegionModel(NameRegion: "Dubai", Places: ["H7","H8"]),RegionModel(NameRegion: "Abu Dhabi", Places: ["H7","H8"])], Days: 14),
    
        PlanModel(Country: "USA", Region: [RegionModel(NameRegion: "NewYork", Places: ["H5","H6"])], Days: 14)

    ]
    
    var body: some View {
        
        ZStack{
            Color("BG").ignoresSafeArea().opacity(1)
            VStack{
                
//                HStack{
//                    Text("Choose the destination")
//                        .font(.custom("Amiri-BoldItalic", size: 35))
//                    Spacer()
//
//                  Image(systemName: "line.3.horizontal")
//                       .resizable()
//                        .frame(width: 25, height: 20)
//                }
                
                ScrollView{
                    Spacer()
                    VStack(spacing:25){
                        VStack(spacing: 10){
                            RepoView(Plans: Plans)
                            
                        }
                    }
                }
                Spacer()
                
            }.padding()
        }
//        .navigationTitle("Choose the destnation")
        .navigationBarTitle(Text("Choose the destnation"), displayMode: .inline)
        .navigationBarItems(trailing:   Image(systemName: "line.3.horizontal")
            .resizable()
            .frame(width: 25, height: 20))
        
    }
}

struct ChooseView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseView()
        
        
    }
}


