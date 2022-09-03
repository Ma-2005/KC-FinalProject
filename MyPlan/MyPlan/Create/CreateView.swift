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
    @State var Slp = ""
    @State var Waup = ""
    
    var body: some View {
        ZStack{
            Color("BG").ignoresSafeArea()
            VStack(spacing: 20){
                listRowView(title: "Country", input: Country)
                listRowView(title: "Region", input: Region)
                HStack{
                Stepper("Days of trip  :     \(Days)", value: $Days, in: 0...30)
                    .font(.custom("Amiri-BoldItalic", size: 26))
                    .padding(.horizontal)
            
                }
                
                listRowView(title: "Places", input: Places)

                
                HStack{
                    Spacer()
                    
                    timeView(title1: "Sleep", input1: Slp)

                    Spacer()

                    timeView(title1: "wake up", input1: Waup)

                    Spacer()

                }
                .frame(width:400, height: 75)

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



