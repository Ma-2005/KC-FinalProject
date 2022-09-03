//
//  ContentView.swift
//  MyPlan
//
//  Created by Mac on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                    
                      }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                    
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


