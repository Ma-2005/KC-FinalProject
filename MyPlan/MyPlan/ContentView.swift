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
            VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .background(.white.opacity(0.4))
                    .cornerRadius(25)
                
                Text("Plan your travel")
                    .font(.custom("Amiri-BoldItalic", size: 35))
                    .padding(.horizontal)
                    .background(.white.opacity(0.4))
                    .cornerRadius(25)

                Spacer()
                VStack(spacing: 45){
                NavigationLink (destination: ChooseView()) {
                  
                    Text("Choose Your Plan")
                        .font(.custom("Amiri-BoldItalic", size: 35))
                        .foregroundColor(.white)
                        .frame(width: 285, height:100)
                        .background(.white.opacity(0.4))
                        .cornerRadius(25)
                    }
                
                NavigationLink (destination: ChooseView()) {
                  
                    Text("Creat Your Plan")
                        .font(.custom("Amiri-BoldItalic", size: 35))
                        .foregroundColor(.white)
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
                .preferredColorScheme(.dark)

        }
    }
}
