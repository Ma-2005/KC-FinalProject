//
//  listRowView.swift
//  MyPlan
//
//  Created by Mac on 04/09/2022.
//

import SwiftUI

struct listRowView: View {
    
    @State var title : String
    
    @Binding var input : String
    
    var body: some View {
        HStack(spacing: 15){
            Spacer()
            Text("\(title) :")
                .font(.custom("Amiri-BoldItalic", size: 24))
                .frame(width:110, height: 60)
                .background(.white.opacity(0.4))
                .cornerRadius(10)
            Spacer()
            TextField("      \(title)", text: $input)
                .font(.custom("Amiri-Bold", size: 26))
                .frame(width:180, height: 60)
                .background()
                .cornerRadius(15)
            Spacer()
        }
        .frame(width:400, height: 75)

    }
}

