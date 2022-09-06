//
//  SecChooseView.swift
//  MyPlan
//
//  Created by Mac on 01/09/2022.
//

import SwiftUI

struct SecChooseView: View {
    
    var C : RegionModel
    var M : PlaceModel
    
    @State var PInfo = PlaceModel(Name: "", Information: "", timesOpen: "")
    
    @State var place = false
    
    @State var ShowMyPlansView = false
    @State var LetsShowAlert = false
    @State private var Navigating = false
    
    var body: some View {
        
        ZStack{
            
            Color("BG").ignoresSafeArea()
            VStack {
                ZStack{
                    Image(C.NameRegion)
                        .resizable()
                        .scaledToFit()
//                        .frame(width: .infinity ,height: 300, alignment: .center)
                        .ignoresSafeArea()
                       
                    VStack {
                        HStack{
                            Spacer()
                            Text(C.NameRegion)
                                .font(.custom("Amiri-BoldItalic", size: 25))
                                .foregroundColor(.black)
                                .padding()
                                .background(.white.opacity(0.7))
                                .cornerRadius(15)
                            
                        }
                    }.frame(width: .infinity ,height: 180, alignment: .top)
                }
                Spacer()
            }
            
           
                
            VStack(spacing: 65){
                    Spacer()
                    
                    VStack{
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    HStack{
                      Text("Best Places :")
                        
                        Spacer()
                    }
                    .font(.custom("Amiri-BoldItalic", size: 25))
                    .foregroundColor(.black)
                    .padding()
                    .background(.white.opacity(0.4))
                    .cornerRadius(15)
                    
                    ScrollView(.horizontal){
                    HStack{
                        ForEach(C.Places){ P in
                                ZStack{
                                    VStack{

                                        Image(P.Name)
                                            .resizable()
                                            .frame(width: 200, height: 150)
                                            .cornerRadius(10)

                                        Text(P.Name)
                                            .foregroundColor(.black)
                                            .font(.custom("Amiri-Italic", size: 26))

                                    }
                                    }
                                .frame(width: 200, height: 200)
                                .background(.white.opacity(0.4))
                                .cornerRadius(10)
                                .onTapGesture {
                                    PInfo = P
                                    place.toggle()
                                }
                                
                            }
                        }
                    }
                }
//                    Spacer()
                    VStack{

                    Button {
                        LetsShowAlert = true

                    } label: {
                        Text("Save Plan")
                            .font(.custom("Amiri-Bold", size: 32))
                            .foregroundColor(.white)
                            .padding()
                            .background(.black)
                            .cornerRadius(18)
                    }
                    }
                
                }
                .frame(width: 370, height: 400)
            
            }
            .edgesIgnoringSafeArea(.all)
            .sheet(isPresented: $place){
                ThirdView(PlaceInfo: $PInfo)
            }
        NavigationLink(destination: MyPlansView(), isActive: $Navigating){
            EmptyView()
        }
        .alert("Save Your Plan !!", isPresented: $LetsShowAlert){
            
            Button("Continue", role: .destructive, action: GoToPlans )
            Button("Cancel", role: .cancel){}
            
        }message: {
            Text("See Your Plan")
        }
        }
    func GoToPlans() {
        
        ShowMyPlansView = true
        
        Navigating.toggle()
        
        MyReadyPlans.append(RegionModel(NameRegion: C.NameRegion, Places: [PlaceModel(Name: M.Name, Information: M.Information, timesOpen: M.timesOpen)]))
        
    }
    }


struct SecChooseView_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView {
           SecChooseView(C: RegionModel(NameRegion: "Istanbul", Places: [PlaceModel(Name: "The Blue Mosque", Information: "The Blue Mosque in Istanbul, also known by its official name, the Sultan Ahmed Mosque (Turkish: Sultan Ahmet Camii), is an Ottoman-era historical mosque located in Istanbul, Turkey.  A functioning mosque, it also attracts large numbers of tourist visitors.  It was constructed between 1609 and 1616 during the rule of Ahmed I. Its Külliye contains Ahmed's tomb, a madrasah and a hospice.  Hand-painted blue tiles adorn the mosque’s interior walls, and at night the mosque is bathed in blue as lights frame the mosque’s five main domes, six minarets and eight secondary domes. It sits next to the Hagia Sophia, the principal mosque of Istanbul until the Blue Mosque's construction and another popular tourist site.  The Blue Mosque was included in the UNESCO World Heritage Site list in 1985 under the name of (Historic Areas of Istanbul).", timesOpen: "From 9 AM To 7 PM")]), M: PlaceModel(Name: "The Maiden's Tower", Information: "The Maiden's Tower (Turkish: Kız Kulesi), also known as Leander's Tower (Tower of Leandros) since the medieval Byzantine period, is a tower on a small islet at the southern entrance of the Bosphorus strait, 200 m (220 yd) from the coast of Üsküdar in Istanbul, Turkey.", timesOpen: "From 9 AM To 7 PM"))
        }
    }
}
