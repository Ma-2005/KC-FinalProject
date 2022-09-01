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

        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(Plans){ plan in
                    NavigationLink(destination: T1View(M: plan)) {
                        
                    
                    ZStack{
                        VStack{
                            Image(plan.Country)
                                .resizable()
                                .frame(width: 200, height: 150)
                                .cornerRadius(10)
                            Spacer()
                        
                            Text(plan.Country)
                                .foregroundColor(.black)
                                .font(.custom("Amiri-Italic", size: 26))
                                
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

//struct RepoView_Previews: PreviewProvider {
//    static var previews: some View {
//        RepoView(Turkey: constant.([""]))
//    }
//}
