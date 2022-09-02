//
//  CreateView.swift
//  MyPlan
//
//  Created by Mac on 31/08/2022.
//

import SwiftUI

struct CreateView: View {

    @State var Country = ""
    @State var Region = ""
    @State var Days : Int = 0
    @State var Places = ""
    @State var Slp1 = ""
    @State var Wap2 = ""
    
    var body: some View {
        ZStack{
            Color("BG").ignoresSafeArea()
            VStack(spacing: 20){
                ExtractedView(title: "Country", input: Country)
                ExtractedView(title: "Region", input: Region)
                HStack{
                Stepper("Days of trip       \(Days)", value: $Days, in: 0...30)
                    .font(.custom("Amiri-BoldItalic", size: 30))
                    .padding(.horizontal)
                    
                }
                ExtractedView(title: "Places", input: Region)
            }
        }
        .navigationBarTitle(Text("Create your plan"), displayMode: .inline)
        .navigationBarItems(trailing:   Image(systemName: "line.3.horizontal")
            .resizable()
            .frame(width: 25, height: 20))
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}

struct ExtractedView: View {
    
    @State var title : String
    
    @State var input : String
    
    var body: some View {
        HStack(spacing: 15){
            Spacer()
            Text("\(title) :")
                .font(.custom("Amiri-BoldItalic", size: 30))
                .frame(width:130, height: 75)
            Spacer()
            TextField("      \(title)", text: $input)
                .font(.custom("Amiri-Bold", size: 30))
                .frame(width:220, height: 75)
                .background()
                .cornerRadius(15)
            
        }
        .frame(width:400, height: 75)

    }
}
