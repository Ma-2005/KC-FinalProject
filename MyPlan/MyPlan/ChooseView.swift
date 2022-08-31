//
//  ChooseView.swift
//  MyPlan
//
//  Created by Mac on 29/08/2022.
//

import SwiftUI

struct ChooseView: View {
    
    @State var Turkey = ["H1","H2","H3","H4","H5","H6","H7"]
    
    var body: some View {
       
            ZStack{
                Color("BG").ignoresSafeArea().opacity(1)
              
            VStack{
                Text("اختر خطتك")
                    .font(.custom("Amiri-BoldItalic", size: 45))
                    .padding()
                    .background(.gray.opacity(0.4))
                    .cornerRadius(20)
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
