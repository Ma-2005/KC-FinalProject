//
//  ContentView.swift
//  MyPlan
//
//  Created by Mac on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
        ZStack{
            Color("BG").ignoresSafeArea()
            VStack(spacing: 38){
                HStack{
                    
                }
                VStack(spacing: 15){
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .background(.white.opacity(0.4))
                    .shadow(color: .black, radius: 3)
                    .cornerRadius(25)
                
                Text("خطط سفرتك")
                    .font(.custom("Amiri-BoldItalic", size: 45))
                    .padding(.horizontal)
                    .background(.white.opacity(0.4))
                    .cornerRadius(25)
                }
                Spacer()
                VStack(spacing: 45){
                NavigationLink (destination: ChooseView()) {
                  
                    Text("اختر خطتك")
                        .font(.custom("Amiri-BoldItalic", size: 35))
                        .foregroundColor(.black)
                        .frame(width: 285, height:100)
                        .background(.white.opacity(0.4))
                        .cornerRadius(25)
                    }
                
                NavigationLink (destination: CreateView()) {
                  
                    Text("أنشئ خطتك")
                        .font(.custom("Amiri-BoldItalic", size: 35))
                        .foregroundColor(.black)
                        .frame(width: 285, height:100)
                        .background(.white.opacity(0.4))
                        .cornerRadius(25)
                    }
                }
                Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                

        }
    }
}
