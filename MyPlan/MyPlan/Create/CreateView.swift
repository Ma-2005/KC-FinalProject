//
//  CreateView.swift
//  MyPlan
//
//  Created by Mac on 31/08/2022.
//

import SwiftUI

struct CreateView: View {
    
    @State var MyPlanName = ""
    @State var Country = ""
    @State var Region = ""
    @State var Days : Int = 0
    @State var Places = ""
    @State var Note = ""
    
    @State var ShowMenu : Bool = false
    
    @State var ShowSecCreateView = false
    @State private var ShowAlert = false
    @State var MyNavigate = false
    
    var body: some View {
        ZStack{
            Color("BG").ignoresSafeArea()
            
            
            ScrollView {
                VStack(spacing: 20){
                    VStack{
                        HStack{
                            Text("Write Name for your Plan")
                                .font(.custom("Amiri-BoldItalic", size: 24))
                                .frame(height: 25)
                                .modifier(MoodTextView())
                            
                        }
                        HStack{
                            TextField("    Plan's Name", text: $MyPlanName)
                                .font(.custom("Amiri-Bold", size: 26))
                                .frame(width:200, height: 65)
                                .background()
                                .cornerRadius(15)
                            
                        }
                        
                    }
                    VStack{
                        
                    listRowView(title: "Country", input: $Country)
                            .padding()
                    listRowView(title: "Region", input: $Region)
                            .padding()
                    }
                        
                    HStack{
                        Stepper("Days of trip  :     \(Days)", value: $Days, in: 0...30)
                            .font(.custom("Amiri-BoldItalic", size: 24))
                            .padding(.horizontal)
                            .background(.white.opacity(0.4))
                            .cornerRadius(10)
                            .padding()
                        
                    }.padding()
                    
                    VStack (spacing: 10){
                        HStack{
                            Text("Plases :")
                                .font(.custom("Amiri-BoldItalic", size: 24))
                                .frame(width:100, height: 60)
                                .background(.white.opacity(0.4))
                                .cornerRadius(10)
                            
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
                                    
                                    Text("\(P)  ")
                                    
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
                                    .background(.white.opacity(0.4))
                                    .cornerRadius(10)
                                    .padding()
                                
                                Spacer()
                            }
                            HStack{
                                TextField("Write here :", text: $Note)
                                    .font(.custom("Amiri-Bold", size: 26))
                                    .frame(width:300, height: 100,alignment: .top)
                                    .background()
                                    .cornerRadius(15)
                                    .padding()
                                Spacer()
                            }
                            Spacer()
                        }.padding()
                        Spacer()
                        Spacer()
                        Button {
                            ShowAlert = true
                            
                        } label: {
                            Text("Submit")
                                .font(.custom("Amiri-Bold", size: 32))
                                .foregroundColor(.white)
                                .padding()
                                .background(.black)
                                .cornerRadius(18)
                        }
                        
                    }
                    .padding()
                }
                
            }
            NavigationLink(destination: MyPlansView(), isActive: $MyNavigate){
                EmptyView()
            }
            
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
        .navigationBarTitle(ShowMenu ? "" : "Create your plan", displayMode: .inline)
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
        .alert("Save Your Plan !!", isPresented: $ShowAlert) {
            
            //            NavigationLink( destination:  SecCreateView(ShowPlan: MyPlansModel(MyCountry: Country, MyRegion: Region, MyDays: Days, MyPlaces: [Places], MyNote: Note)), isActive: $ShowSecCreateView)
            
            Button("Continue", role: .cancel , action: goSecond )
            Button("Cancel", role: .destructive){}
            
        }message: {
            Text("See Your Plan")
        }
        
        
    }
    func goSecond() {
        
        ShowSecCreateView = true
        
        CustomPlans.append(MyPlansModel(PlanName: MyPlanName, MyCountry: Country, MyRegion: Region, MyDays: Days, MyPlaces: [Places], MyNote: Note))
        
        MyNavigate.toggle()
        //       NavigationLink( destination:  SecCreateView(ShowPlan: MyPlansModel(MyCountry: Country, MyRegion: Region, MyDays: Days, MyPlaces: [Places], MyNote: Note)), isActive: $ShowSecCreateView){}
        
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}



