//
//  CreatingView.swift
//  MyPlan
//
//  Created by Mac on 07/09/2022.
//

import SwiftUI

struct CreatingView: View {
    
    @State var NEW  : [String] = []
    
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
            Color.white.ignoresSafeArea()
            
            VStack(spacing: 20){
                
                Text("Creat Your Plan")
                    .font(.custom("Amiri-Bold", size: 25))
                    .foregroundColor(Color("BG"))
                    .frame(width: 200, height:70)
                    .background(.white)
                    .cornerRadius(12)
                    .shadow(color: Color("BG"), radius: 10)
                
                Spacer()
                
                VStack {
                    HStack{
                        Text("Plan Name :")
                        
                        Spacer()
                    }
                    HStack{
                    TextField("Write Your Plan Name", text: $MyPlanName)
                        .textFieldStyle(.roundedBorder)
                        
                    }
                }
                .shadow(color: Color("BG"), radius: 5)
                
                
                HStack {
                    
                    VStack {
                        HStack{
                            Text("Country :")
                            
                            Spacer()
                        }
                        HStack{
                        TextField("Country", text: $Country)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 170)
                            
                        }
//                        .shadow(color: Color("BG"), radius: 5)
                        
                    }
                    
                    VStack {
                        HStack{
                            Text("Region :")
                            
                            Spacer()
                        }
                        HStack{
                        TextField("Region", text: $Region)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 170)
                        }
//                        .shadow(color: Color("BG"), radius: 5)
                        
                    }
                    
                }.shadow(color: Color("BG"), radius: 5)
                
                HStack{
                    Stepper("Days of trip  :     \(Days)", value: $Days, in: 0...30)
                        
                    
                }.shadow(color: Color("BG"), radius: 10)
                .padding()
                
                VStack (spacing: 10){
                    VStack{
                    HStack{
                        Text("Places :")
                        
                        Spacer()
                    }
                    HStack(spacing: 15){
                    TextField("Write Your Places Name", text: $Places)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 300)
                        
                            
                        Button {
                            
                            NEW.append(Places)
                            
                            
                            
                        } label: {
                            Image(systemName: "plus.app.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                        }
                    }
                }
                    VStack{
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(NEW, id: \.self){ P in
                                
                                Text( P )
                                
                            }
                        }
                    }
                }
                    
                }.shadow(color: Color("BG"), radius: 5)
                
                VStack {
                    HStack{
                        Text("Notes :")
                        
                        Spacer()
                    }
                    HStack{
                    TextField("Write Some Notes", text: $Note)
                        .textFieldStyle(.roundedBorder)
                        
                    }
//                    .shadow(color: Color("BG"), radius: 5)
                    
                }.shadow(color: Color("BG"), radius: 5)
                
                Spacer()
                
                Button {
                    ShowAlert = true
                    
                } label:{
                Text("Save Plan")
                        .font(.custom("Amiri-Bold", size: 25))
                        .foregroundColor(.white)
                        .frame(width: 350, height:70)
                        .background(Color("BG"))
                        .cornerRadius(12)
                }
                
           
            }
            .padding()
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
        }
        .alert("Save Your Plan !!", isPresented: $ShowAlert) {
            Button("Cancel", role: .destructive){}
            Button("Continue", role: .cancel , action: goSecond )
           
            
        }message: {
            Text("See Your Plan")
        
    }
    }
    func goSecond() {
        
        ShowSecCreateView = true
        
       Plcs += NEW
        
        
        CustomPlans.append(MyPlansModel(PlanName: MyPlanName, MyCountry: Country, MyRegion: Region, MyDays: Days, MyPlaces: NEW , MyNote: Note))
        
     NEW = []
        
        MyNavigate.toggle()
    }
}

struct CreatingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        CreatingView()
            .preferredColorScheme(.light)
    }
    }
}
