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
            ZStack(alignment: .center){
            Image("e")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .blur(radius: 0.8)
                Color.black.opacity(0.23).ignoresSafeArea()
                
            VStack(spacing: 38){

                VStack(spacing: 15){
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .background(.white.opacity(0.4))
                    .cornerRadius(25)
                    VStack(spacing: -15){
                Text("Plan your ")
                    .font(.custom("Amiri-Regular", size: 45))
                    

                    
                    Text("Trip")
                        .font(.custom("Amiri-Regular", size: 45))
                        .fontWeight(.bold)
                        .foregroundColor(Color("BG"))
                    }
                }
                
                Spacer()
                VStack{
                    NavigationLink (destination: ChooseView()) {
                    TripView(titel: "Choose your plan")
                 
                    }
                  
                NavigationLink (destination: CreatingView()) {
                    TripView(titel: "Create Your Plan")
                    
                }
                }
                .padding()
                
                
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
//            .navigationBarTitle("", displayMode: .inline)
        .toolbar {
          
          Button {
            self.ShowMenu.toggle()
          } label: {
//
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
