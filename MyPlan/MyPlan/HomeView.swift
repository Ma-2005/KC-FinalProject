//
//  HomeView.swift
//  MyPlan
//
//  Created by Mac on 03/09/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State var ShowMenu : Bool = false
    
    var body: some View {
        
        NavigationView{
        ZStack{
            Color("BG").ignoresSafeArea()
            VStack(spacing: 38){

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
            GeometryReader { _ in
              
              HStack {
                Spacer()
                
                SideMenuView()
                  .offset(x: ShowMenu ? 0 : UIScreen.main.bounds.width)
                  .animation(.easeInOut(duration: 0.4), value: ShowMenu)
              }
              
            }
            .background(Color.black.opacity(ShowMenu ? 0.5 : 0))

        }
        .toolbar {
          
          Button {
            self.ShowMenu.toggle()
          } label: {
            
            if ShowMenu {
              
              Image(systemName: "xmark")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(.black)
                
            } else {
              Image(systemName: "line.3.horizontal")
                .resizable()
                .frame(width: 25, height: 20)
                .foregroundColor(.black)
            }
        }
    }
}.navigationBarBackButtonHidden(true)
    }
        }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
