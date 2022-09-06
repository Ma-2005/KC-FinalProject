//
//  MenuView.swift
//  MyPlan
//
//  Created by Mac on 04/09/2022.
//

import SwiftUI

struct MenuView: View {
    
    @State var PageName : String
    
    @State var IconName : String
    
    var body: some View {
        HStack(spacing: 20){
            
            
            Text(PageName)
                .frame(width: 100, height: 50, alignment: .leading)
            
            Spacer()
            Image(systemName: IconName)
                .font(.custom("", size: 30))
                .frame(width: 50, height: 50)

        }
        .frame(width: 200, height: 50)
    }
}
