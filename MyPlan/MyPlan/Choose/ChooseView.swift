//
//  ChooseView.swift
//  MyPlan
//
//  Created by Mac on 29/08/2022.
//

import SwiftUI

struct ChooseView: View {
    
    @State var ShowMenu : Bool = false
    
    var body: some View {
        
        ZStack{
            Color("BG").ignoresSafeArea().opacity(1)
            VStack{
                
//                HStack{
//                    Text("Choose the destination")
//                        .font(.custom("Amiri-BoldItalic", size: 35))
//                    Spacer()
//
//                  Image(systemName: "line.3.horizontal")
//                       .resizable()
//                        .frame(width: 25, height: 20)
//                }
                
                ScrollView{
                    Spacer()
                    VStack(spacing:25){
                        VStack(spacing: 10){
                            RepoView(Plans: ReadyPlans)
                            
                        }
                    }
                }
                Spacer()
                
            }.padding()
            
            GeometryReader { _ in
              
              HStack {
                Spacer()
                
                SideMenuView()
                  .offset(x: ShowMenu ? 0 : UIScreen.main.bounds.width)
                  .animation(.easeInOut(duration: 0.4), value: ShowMenu)
              }
              
            }
            .background(Color.black.opacity(ShowMenu ? 0.7 : 0))
        }
//        .navigationTitle("Choose the destnation")
        .navigationBarTitle(ShowMenu ? "" : "Choose the destnation", displayMode: .inline)
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
        
    }
}

struct ChooseView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseView()
        
        
    }
}


