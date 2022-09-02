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
        
        PlanModel(Country: "Turkey", Region: "istanbol", Days: 7, Places: ["H1","H2","H3"]),
        PlanModel(Country: "USA", Region: "NewYork", Days: 14, Places: ["H4","H5","H6","H7"])

    ]
    
    var body: some View {
        
        ZStack{
            Color("BG").ignoresSafeArea().opacity(1)
            VStack{
                
                HStack{
                    Text("Choose the destination")
                        .font(.custom("Amiri-BoldItalic", size: 35))
                    Spacer()
                    
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .frame(width: 25, height: 20)
                }
                
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
    }
}

struct ChooseView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseView()
        
        
    }
}


