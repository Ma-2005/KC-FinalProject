//
//  ContentView.swift
//  MyPlan
//
//  Created by Mac on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Image(systemName: "line.3.horizontal")
                        .font(.title.bold())
                    Spacer()
                }.padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
