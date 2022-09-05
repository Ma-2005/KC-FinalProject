//
//  SideMenuView.swift
//  MyPlan
//
//  Created by Mac on 04/09/2022.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack{
            VStack{
            Image(systemName: "person.crop.circle")
                .font(.custom("", size: 65))
            }
            .frame(width: 220, height: 200, alignment: .center)
            
            VStack(spacing: 20){
                
            Divider()
                .frame(width: 200, height: 2)
                .background(Color.black)
                .padding(.horizontal, 1)
            
            
                HStack {
                    Spacer()
                    VStack(spacing: 5) {
                    
                    NavigationLink (destination: HomeView()) {
                        MenuView(PageName: "Home Page", IconName: "house.fill")
                    }
                    
                    NavigationLink (destination: ChooseView()) {
                        MenuView(PageName: "Choose Plan", IconName: "magnifyingglass")
                    }
                    
                    NavigationLink (destination: CreateView()) {
                        MenuView(PageName: "Create Plan", IconName: "note.text.badge.plus")
                    }
                    
                    NavigationLink (destination: MyPlansView()) {
                        MenuView(PageName: "My Plans", IconName: "list.bullet.rectangle.portrait.fill")
                    }
                        NavigationLink (destination: LoginView()) {
                            MenuView(PageName: "Log in", IconName: "person.fill")
                        }
                    }.foregroundColor(.black)
                }
            
            Spacer()
            }
        }
        .padding(30)
        .frame(width: 250)
        .background(Color("BG"))
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}


