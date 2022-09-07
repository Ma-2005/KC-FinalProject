//
//  SecChooseView.swift
//  MyPlan
//
//  Created by Mac on 01/09/2022.
//

import SwiftUI

struct SecChooseView: View {
    

    @State var G : PlanModel
    
    @State var PInfo = PlaceModel(Name: "", Information: "", timesOpen: "")
    
    @State var place = false
    
    @State var ShowMyPlansView = false
    @State var LetsShowAlert = false
    @State private var Navigating = false
    
    var body: some View {
        
        ZStack{
            
            Color.white.ignoresSafeArea()
            VStack {
                
                VStack {
                    ZStack{
                        Image(G.Region[0].NameRegion)
                            .resizable()
                            .scaledToFit()
    //                        .frame(width: .infinity ,height: 300, alignment: .center)
                            .ignoresSafeArea()
                           
                        VStack {
                            HStack{
                                Spacer()
                                Text(G.Region[0].NameRegion)
                                    .font(.custom("Amiri-BoldItalic", size: 25))
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(Color("BG").opacity(0.3))
                                    .cornerRadius(15)
                                
                            }
                        }.frame(width: .infinity ,height: 180, alignment: .top)
                    }
                    
                }
               
            
            
           
                
           
                    
                    VStack{
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(G.Region[0].Places){ P in
                                
                            CardView(title: P.Name, location: G.Country, image: P.Name)
                                .padding()
                                .onTapGesture {
                                    
                                    PInfo = P
                                    place.toggle()
                        }
                    }
                }
            }
                    Spacer()
                    Button {
                        LetsShowAlert = true

                    } label: {
                        
                        Text("Save Plan")
                                .font(.custom("Amiri-Bold", size: 25))
                                .foregroundColor(.white)
                                .frame(width: 350, height:70)
                                .background(Color("BG"))
                                .cornerRadius(12)
                                .padding(.bottom, 40)
                    }
                
                    }
//                .frame(width: 370, height: 20, alignment: .bottom)
//                Spacer()
                
                }
//                }
//                .frame(width: 370, height: 400)
            
            }
            .edgesIgnoringSafeArea(.all)
            .sheet(isPresented: $place){
                ThirdView(PlaceInfo: $PInfo)
            }
        NavigationLink(destination: MyPlansView(), isActive: $Navigating){
            EmptyView()
        }
        .alert("Save Your Plan !!", isPresented: $LetsShowAlert){
            
            Button("Continue", role: .cancel ){
                GoToPlans(M: G)
            }
            Button("Cancel", role: .destructive){}
            
        }message: {
            Text("See Your Plan")
        }
        }
    func GoToPlans( M : PlanModel ) {
        
        ShowMyPlansView = true
        
        Navigating.toggle()
        
        MyReadyPlans.append(M)
        
    }
    }


struct SecChooseView_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView {
           SecChooseView(G: PlanModel(Country: "Turkey", Region: [RegionModel(NameRegion: "Istanbul", Places: [PlaceModel(Name: "The Blue Mosque", Information: "The Blue Mosque in Istanbul, also known by its official name, the Sultan Ahmed Mosque (Turkish: Sultan Ahmet Camii), is an Ottoman-era historical mosque located in Istanbul, Turkey.  A functioning mosque, it also attracts large numbers of tourist visitors.  It was constructed between 1609 and 1616 during the rule of Ahmed I.", timesOpen: "From 9AM to 7PM")])], Days: 7))
        }
    }
}
