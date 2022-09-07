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
            
            Color("BG").ignoresSafeArea()
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
                                .background(.white.opacity(0.7))
                                .cornerRadius(15)
                            
                        }
                    }.frame(width: .infinity ,height: 180, alignment: .top)
                }
                Spacer()
            
            
           
                
            VStack(spacing: 20){
//                    Spacer()
                VStack(spacing: 120){
//                    Spacer()
//                    VStack{
//                        Spacer()
//                        Spacer()
//
//                        Spacer()
//                        Spacer()
//                        Spacer()
//                        Spacer()
                    VStack{
                    HStack{
                        
                      Text("  Places")
                        
                        Spacer()
                    }
                    .font(.custom("Amiri-BoldItalic", size: 32))
                    .foregroundColor(.black)
                    .frame(width: .infinity , height: 65, alignment: .center)
                    .background(.white.opacity(0.4))
                    .cornerRadius(15)
                    
                    ScrollView(.horizontal){
                    HStack{
                        ForEach(G.Region[0].Places){ P in
                                ZStack{
                                    VStack{

                                        Image(P.Name)
                                            .resizable()
                                            .frame(width: 300, height: 250)
                                            .cornerRadius(10)

                                        Text(P.Name)
                                            .foregroundColor(.black)
                                            .font(.custom("Amiri-Italic", size: 36))
                                            .frame(width: 3000, height: 50, alignment: .center)
                                    }
                                    }
                                .frame(width: 300, height: 300)
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
                }
            }
//                    Spacer()
                    Button {
                        LetsShowAlert = true

                    } label: {
                        Text("Save Plan")
                            .font(.custom("Amiri-Bold", size: 32))
                            .foregroundColor(.white)
                            .frame(width: 350, height: 65)
                            .background(.black)
                            .cornerRadius(18)
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


//struct SecChooseView_Previews: PreviewProvider {
//    static var previews: some View {
//       NavigationView {
//           SecChooseView(G: PlanModel(Country: "Turkey", Region: [RegionModel(NameRegion: "Istanbul", Places: [PlaceModel(Name: "The Blue Mosque", Information: "The Blue Mosque in Istanbul, also known by its official name, the Sultan Ahmed Mosque (Turkish: Sultan Ahmet Camii), is an Ottoman-era historical mosque located in Istanbul, Turkey.  A functioning mosque, it also attracts large numbers of tourist visitors.  It was constructed between 1609 and 1616 during the rule of Ahmed I. Its Külliye contains Ahmed's tomb, a madrasah and a hospice.  Hand-painted blue tiles adorn the mosque’s interior walls, and at night the mosque is bathed in blue as lights frame the mosque’s five main domes, six minarets and eight secondary domes. It sits next to the Hagia Sophia, the principal mosque of Istanbul until the Blue Mosque's construction and another popular tourist site.  The Blue Mosque was included in the UNESCO World Heritage Site list in 1985 under the name of (Historic Areas of Istanbul).", timesOpen: "From 9 AM To 7 PM")])], Days: 7), C: RegionModel(NameRegion: "Istanbul", Places: [PlaceModel(Name: "The Blue Mosque", Information: "The Blue Mosque in Istanbul, also known by its official name, the Sultan Ahmed Mosque (Turkish: Sultan Ahmet Camii), is an Ottoman-era historical mosque located in Istanbul, Turkey.  A functioning mosque, it also attracts large numbers of tourist visitors.  It was constructed between 1609 and 1616 during the rule of Ahmed I. Its Külliye contains Ahmed's tomb, a madrasah and a hospice.  Hand-painted blue tiles adorn the mosque’s interior walls, and at night the mosque is bathed in blue as lights frame the mosque’s five main domes, six minarets and eight secondary domes. It sits next to the Hagia Sophia, the principal mosque of Istanbul until the Blue Mosque's construction and another popular tourist site.  The Blue Mosque was included in the UNESCO World Heritage Site list in 1985 under the name of (Historic Areas of Istanbul).", timesOpen: "From 9 AM To 7 PM")]))
//        }
//    }
//}
