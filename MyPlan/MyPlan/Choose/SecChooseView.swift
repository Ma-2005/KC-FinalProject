//
//  SecChooseView.swift
//  MyPlan
//
//  Created by Mac on 01/09/2022.
//

import SwiftUI

struct SecChooseView: View {
    
    var M : RegionModel
    
    var body: some View {
        
        ZStack{
            
            Color("BG").ignoresSafeArea()
            
          
            VStack{
            
                ZStack{
                        Image(M.NameRegion)
                        .resizable()
                        .ignoresSafeArea()
                            .scaledToFit()
                            .frame(width: 385, height: 300)
            
           
                    
                        Text(M.NameRegion)
                        
                        
                    }
                Spacer()
                }
            }
        }
    }


//struct T1View_Previews: PreviewProvider {
//    static var previews: some View {
//        T1View()
//    }
//}
