//
//  T1View.swift
//  MyPlan
//
//  Created by Mac on 01/09/2022.
//

import SwiftUI

struct T1View: View {
    
    var M : RegionModel
    
    var body: some View {
        
        ZStack{
            
            Color("BG").ignoresSafeArea()
            
            VStack{
                
                ZStack{
                    
                    Image(M.NameRegion)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 200)
                    
                    VStack{
                        Spacer()
                        
                        Text(M.NameRegion)
                        
                        
                    }
                }
            }
        }
    }
}

//struct T1View_Previews: PreviewProvider {
//    static var previews: some View {
//        T1View()
//    }
//}
