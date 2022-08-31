//
//  ChooseView.swift
//  MyPlan
//
//  Created by Mac on 29/08/2022.
//

import SwiftUI

struct ChooseView: View {
    
    @State var Turkey = ["H1","H2","H3","H4","H5","H6","H7"]
    
    @State var USA = ["H1","H2","H3","H4","H5","H6","H7"]
    
    @State var UAE = ["H1","H2","H3","H4","H5","H6","H7"]
    
    @State var France = ["H1","H2","H3","H4","H5","H6","H7"]
    
    @State var Egypt = ["H1","H2","H3","H4","H5","H6","H7"]
    
    var body: some View {
        
        ZStack{
            Color("BG").ignoresSafeArea().opacity(1)
            
            
            VStack{
                HStack{
                    Text("حدد المنطقة")
                        .font(.custom("Amiri-BoldItalic", size: 45))
                    Spacer()
                    
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .frame(width: 40, height: 30)
                }
                Spacer()
                
                ScrollView{
                    VStack(spacing:25){
                        VStack(spacing: 15){
                            HStack{
                                
                                Text("Turkey")
                                    .font(.custom("Amiri-BoldItalic", size: 21))
                                
                                Spacer()
                                
                                Text("تـركـيـا  ")
                                    .font(.custom("Amiri-BoldItalic", size: 21))
                                
                            }
                            .padding()
                            .background(.white.opacity(0.4))
                            .cornerRadius(15)
                            
                            ScrollView(.horizontal) {
                                HStack(spacing: 20) {
                                    ForEach(Turkey, id: \.self){ turkey in
                                        NavigationLink(destination: Ch1View() ) {
                                            
                                            ZStack{
                                                VStack{
                                                    Image(turkey)
                                                        .resizable()
                                                        .frame(width: 200, height: 150)
                                                        .cornerRadius(10)
                                                    Spacer()
                                                    
                                                    Text(turkey)
                                                        .foregroundColor(.black)
                                                        .font(.custom("Amiri-Italic", size: 26))
                                                    
                                                    
                                                }
                                            }  .frame(width: 200, height: 200)
                                                .background(.white.opacity(0.4))
                                                .cornerRadius(10)
                                        }
                                    }
                                }
                            }
                        }
                        
                        VStack(spacing: 15){
                            HStack{
                                
                                Text("UAE")
                                    .font(.custom("Amiri-BoldItalic", size: 21))
                                
                                Spacer()
                                
                                Text("الإمارت العربية المتحدة")
                                    .font(.custom("Amiri-BoldItalic", size: 21))
                                
                            }
                            .padding()
                            .background(.white.opacity(0.4))
                            .cornerRadius(15)
                            
                            ScrollView(.horizontal) {
                                HStack(spacing: 20) {
                                    ForEach(UAE, id: \.self){ uae in
                                        NavigationLink(destination: Ch1View() ) {
                                            
                                            ZStack{
                                                VStack{
                                                    Image(uae)
                                                        .resizable()
                                                        .frame(width: 200, height: 150)
                                                        .cornerRadius(10)
                                                    Spacer()
                                                    
                                                    Text(uae)
                                                        .foregroundColor(.black)
                                                        .font(.custom("Amiri-Italic", size: 26))
                                                    
                                                    
                                                }
                                            }  .frame(width: 200, height: 200)
                                                .background(.white.opacity(0.4))
                                                .cornerRadius(10)
                                        }
                                    }
                                }
                            }
                        }
                        
                        VStack(spacing: 15){
                            HStack{
                                
                                Text("France")
                                    .font(.custom("Amiri-BoldItalic", size: 21))
                                
                                Spacer()
                                
                                Text("فرنسا")
                                    .font(.custom("Amiri-BoldItalic", size: 21))
                                
                            }
                            .padding()
                            .background(.white.opacity(0.4))
                            .cornerRadius(15)
                            
                            ScrollView(.horizontal) {
                                HStack(spacing: 20) {
                                    ForEach(France, id: \.self){ france in
                                        NavigationLink(destination: Ch1View() ) {
                                            
                                            ZStack{
                                                VStack{
                                                    Image(france)
                                                        .resizable()
                                                        .frame(width: 200, height: 150)
                                                        .cornerRadius(10)
                                                    Spacer()
                                                    
                                                    Text(france)
                                                        .foregroundColor(.black)
                                                        .font(.custom("Amiri-Italic", size: 26))
                                                    
                                                    
                                                }
                                            }  .frame(width: 200, height: 200)
                                                .background(.white.opacity(0.4))
                                                .cornerRadius(10)
                                        }
                                    }
                                }
                            }
                        }
                        
                        VStack(spacing: 15){
                            HStack{
                                
                                Text("USA")
                                    .font(.custom("Amiri-BoldItalic", size: 21))
                                
                                Spacer()
                                
                                Text("الولايات المتحدة الأمريكية")
                                    .font(.custom("Amiri-BoldItalic", size: 21))
                                
                            }
                            .padding()
                            .background(.white.opacity(0.4))
                            .cornerRadius(15)
                            
                            ScrollView(.horizontal) {
                                HStack(spacing: 20) {
                                    ForEach(USA, id: \.self){ usa in
                                        NavigationLink(destination: Ch1View() ) {
                                            
                                            ZStack{
                                                VStack{
                                                    Image(usa)
                                                        .resizable()
                                                        .frame(width: 200, height: 150)
                                                        .cornerRadius(10)
                                                    Spacer()
                                                    
                                                    Text(usa)
                                                        .foregroundColor(.black)
                                                        .font(.custom("Amiri-Italic", size: 26))
                                                    
                                                    
                                                }
                                            }  .frame(width: 200, height: 200)
                                                .background(.white.opacity(0.4))
                                                .cornerRadius(10)
                                        }
                                    }
                                }
                            }
                        }
                        
                        VStack(spacing: 15){
                            HStack{
                                
                                Text("Turkey")
                                    .font(.custom("Amiri-BoldItalic", size: 21))
                                
                                Spacer()
                                
                                Text("تـركـيـا  ")
                                    .font(.custom("Amiri-BoldItalic", size: 21))
                                
                            }
                            .padding()
                            .background(.white.opacity(0.4))
                            .cornerRadius(15)
                            
                            ScrollView(.horizontal) {
                                HStack(spacing: 20) {
                                    ForEach(Turkey, id: \.self){ turkey in
                                        NavigationLink(destination: Ch1View() ) {
                                            
                                            ZStack{
                                                VStack{
                                                    Image(turkey)
                                                        .resizable()
                                                        .frame(width: 200, height: 150)
                                                        .cornerRadius(10)
                                                    Spacer()
                                                    
                                                    Text(turkey)
                                                        .foregroundColor(.black)
                                                        .font(.custom("Amiri-Italic", size: 26))
                                                    
                                                    
                                                }
                                            }  .frame(width: 200, height: 200)
                                                .background(.white.opacity(0.4))
                                                .cornerRadius(10)
                                        }
                                    }
                                }
                            }
                        }
                        
                        
                    }
                }
                Spacer()
                
            }.padding()
        }
    }
}

struct ChooseView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseView()
        
        
    }
}
