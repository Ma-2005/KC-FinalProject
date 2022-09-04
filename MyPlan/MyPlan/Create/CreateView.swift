//
//  CreateView.swift
//  MyPlan
//
//  Created by Mac on 31/08/2022.
//

import SwiftUI

struct CreateView: View {
    
    @State var Country = ""
    @State var Region = ""
    @State var Days : Int = 0
    @State var Places = ""
    
    @State var Plcs: [String] = []
    
    @State var Note = ""
    
    @State var ShowMenu : Bool = false
    var body: some View {
        ZStack{
            Color("BG").ignoresSafeArea()
            
            
            ScrollView {
                VStack(spacing: 20){
                    
                    Text("Write your plan")
                        .font(.custom("Amiri-BoldItalic", size: 24))
                        .modifier(MoodTextView())
                    
                    listRowView(title: "Country", input: Country)
                    listRowView(title: "Region", input: Region)
                    HStack{
                        Stepper("Days of trip  :     \(Days)", value: $Days, in: 0...30)
                            .font(.custom("Amiri-BoldItalic", size: 24))
                            .padding(.horizontal)
                        
                    }
                    
                    VStack (spacing: 10){
                        HStack{
                            Text("Plases :")
                                .font(.custom("Amiri-BoldItalic", size: 24))
                                .frame(width:100, height: 60)
                            
                            TextField("    Places", text: $Places)
                                .font(.custom("Amiri-Bold", size: 24))
                                .frame(width:200, height: 60)
                                .background()
                                .cornerRadius(15)
                            
                            Button {
                                
                                Plcs.append(Places)
                                
                            } label: {
                                Image(systemName: "plus.app.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.black)
                            }
                            
                        }
                        .frame(width:400, height: 75)
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(Plcs, id: \.self){ P in
                                    
                                    Text("\(P) -")
                                    
                                }
                            }
                        }
                        .font(.custom("Amiri-BoldItalic", size: 24))
                        .frame(height: 25)
                        .modifier(MoodTextView())
                        .padding()
                        
                        VStack{
                            HStack{
                            Text("Write Some Notes :")
                                    .font(.custom("Amiri-BoldItalic", size: 24))
                                    .frame(height: 25)
                                    .modifier(MoodTextView())
                                    
                                Spacer()
                            }
                            HStack{
                                TextField("Write here :", text: $Note)
                                    .font(.custom("Amiri-Bold", size: 26))
                                    .frame(width:300, height: 100,alignment: .top)
                                    .background()
                                    .cornerRadius(15)
                                Spacer()
                            }
                            Spacer()
                        }.padding()
                        
                        Button {
                            
                        } label: {
                            
                        }

                    }
                }
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
        .navigationBarTitle(Text("Create your plan"), displayMode: .inline)
        .toolbar {
            
            Button {
                self.ShowMenu.toggle()
            } label: {
                
                if ShowMenu {
                    
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 25, height: 20)
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

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}



