//
//  RepoView.swift
//  MyPlan
//
//  Created by Mac on 01/09/2022.
//

import SwiftUI

struct RepoView: View {

    var Plans : [PlanModel]
 
var body: some View {

    VStack{
   
//        ScrollView(.horizontal) {
//            HStack(spacing: 20) {
                ForEach(Plans){ plan in
                    
                    HStack{
                        Text(plan.Country)
                            .font(.custom("Amiri-BoldItalic", size: 25))
                        
                        Spacer()
                    }
                    .modifier(MoodTextView())
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                        ForEach(plan.Region){ region in
        
                            NavigationLink( destination: SecChooseView(G: PlanModel(Country: plan.Country, Region: [region], Days: plan.Days))) {
                    ZStack{
                        VStack{
//                            ScrollView(.horizontal){
//                            HStack{
                           
                            Image(region.NameRegion)
                                .resizable()
                                .frame(width: 200, height: 150)
                                .cornerRadius(10)
                            Spacer()
                        
                            Text(region.NameRegion)
                                .foregroundColor(.black)
                                .font(.custom("Amiri-Italic", size: 26))
//                                }
//                                }
                        }
                    }
                    }
                    .frame(width: 200, height: 200)
                    .background(.white.opacity(0.4))
                    .cornerRadius(10)
                    
            }
        }
                }
            }
        }
    }
}

//struct RepoView_Previews: PreviewProvider {
//    static var previews: some View {
//        RepoView(Plans: PlanModel[""])
//    }
//}
