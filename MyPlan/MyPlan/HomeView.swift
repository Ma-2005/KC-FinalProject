//
//  HomeView.swift
//  MyPlan
//
//  Created by Mac on 03/09/2022.
//

import SwiftUI

struct HomeView: View {
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
                    .cornerRadius(25)
                
                Text("Plan your trip")
                    .font(.custom("Amiri-BoldItalic", size: 45))
                    .padding(.horizontal)
                    .background(.white.opacity(0.4))
                    .cornerRadius(25)
                }
                
                Spacer()
                VStack(spacing: 45){
                    NavigationLink (destination: ChooseView()) {
                    TripView(titel: "Choose your plan")
                 
                    }
                  
                NavigationLink (destination: CreateView()) {
                    TripView(titel: "Create Your Plan")
                    
                }
                }
                Spacer()
                }
        }.navigationBarBackButtonHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
