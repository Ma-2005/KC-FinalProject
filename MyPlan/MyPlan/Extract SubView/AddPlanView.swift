//
//  addPlanView.swift
//  MyPlan
//
//  Created by Mac on 05/09/2022.
//

import SwiftUI

struct AddPlanView: View {
    
    @State var TextIn : String
    
    var body: some View {
        VStack{
            HStack{
            Text(TextIn)
            
                Spacer()
            }
        }
    }
}
