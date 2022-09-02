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
    @State var Days = ""
    @State var Places = ""
    @State var Time1 = ""
    @State var Time2 = ""
    
    var body: some View {
        ZStack{
            Color("BG").ignoresSafeArea()
            VStack(spacing: 25){
                ExtractedView(title: "Country", input: Country)
                ExtractedView(title: "Region", input: Region)

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
        HStack{
            Text("\(title) :")
            
            
            TextField("     Add \(title)", text: $input)
                .font(.custom("Amiri-Bold", size: 30))
                .frame(width:265, height: 75)
                .background()
                .cornerRadius(15)
            
        }
    }
}
