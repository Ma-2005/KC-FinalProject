//
//  SecCreateView.swift
//  MyPlan
//
//  Created by Mac on 02/09/2022.
//

import SwiftUI

struct SecCreateView: View {
    
    @State var ShowPlan : MyPlansModel
    
    var body: some View {
        ZStack{
            Color("BG").ignoresSafeArea()
            
            VStack(spacing:12){
                
                ExtractedView(TextIn: "Country : \(ShowPlan.MyCountry)")
                
                ExtractedView(TextIn: "Region : \(ShowPlan.MyRegion)")
                
                ExtractedView(TextIn: "Days : \(ShowPlan.MyDays)")
                
                ExtractedView(TextIn: "Places : \(ShowPlan.MyPlaces)")
                

            }
        }
        .edgesIgnoringSafeArea(.all)

    }
}

//struct SecCreateView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecCreateView()
//    }
//}

struct ExtractedView: View {
    
    @State var TextIn : String
    
    var body: some View {
        HStack{
            Text(TextIn)
        }
        .frame(width:400, height: 65)
    }
}
