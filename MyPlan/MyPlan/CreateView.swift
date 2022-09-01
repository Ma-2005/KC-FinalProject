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
            VStack{
                HStack{
                Text("ابدأ بانشاء خطتك")
                    .font(.custom("Amiri-Bold", size: 45))
                
                Spacer()
                
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .frame(width: 40, height: 30)
                }
                
                Spacer()
                
                VStack(spacing: 25){
                
                HStack{
                TextField("اسم الدولة", text: $Country)
                        .font(.custom("Amiri-Bold", size: 30))
                        .frame(width:265, height: 75)
                        .background()
                        .cornerRadius(15)
                
                Spacer()
                    
                Text("الدولة :")
                        .font(.custom("Amiri-Bold", size: 30))
                    
                }
                
                HStack{
                TextField("اسم المنطقة", text: $Region)
                        .font(.custom("Amiri-Bold", size: 30))
                        .frame(width:265, height: 75)
                        .background()
                        .cornerRadius(15)
                
                Spacer()
                    
                Text("المنطقة :")
                        .font(.custom("Amiri-Bold", size: 30))
                    
                }
                
                HStack {
                TextField("كم يوم", text: $Days)
                    .font(.custom("Amiri-Bold", size: 30))
                    .frame(width:265, height: 75)
                    .background()
                    .cornerRadius(15)
                
                Spacer()
                
                Text("مدة الرحلة :")
                    .font(.custom("Amiri-Bold", size: 30))
                        
                    }
                    
                    HStack {
                    TextField("الأماكن التي تخطط لزيارتها", text: $Places)
                        .font(.custom("Amiri-Bold", size: 28))
                        .frame(width:265, height: 75)
                        .background()
                        .cornerRadius(15)
                    
                    Spacer()
                    
                    Text("الأماكن :")
                        .font(.custom("Amiri-Bold", size: 30))
                            
                        }
                    
                    HStack {
                        Spacer()
                        HStack(spacing: 10){
                    TextField("الاستيقاظ", text: $Time1)
                        .font(.custom("Amiri-Bold", size: 28))
                        .frame(width:100, height: 75)
                        .background()
                        .cornerRadius(15)
                        
                            TextField("النوم", text: $Time2)
                            .font(.custom("Amiri-Bold", size: 28))
                            .frame(width:100, height: 75, alignment: .center)
                            .background()
                            .cornerRadius(15)
                        }
                    Spacer()
                    
                    Text("الأوقات :")
                        .font(.custom("Amiri-Bold", size: 30))
                            
                        }
                
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
