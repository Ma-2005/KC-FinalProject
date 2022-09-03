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
    
    @State var place = false
    
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
                       
                    HStack{
                        Spacer()
                        Text(C.NameRegion)
                            .font(.custom("Amiri-BoldItalic", size: 25))
                            .foregroundColor(.black)
                            .padding()
                            .background(.white.opacity(0.4))
                            .cornerRadius(15)
                    }
                }
                Spacer()
            }
            VStack{
                Spacer()
                VStack{
                    HStack{
                      Text("Places")
                        
                        Spacer()
                    }
                    .font(.custom("Amiri-BoldItalic", size: 25))
                    .foregroundColor(.black)
                    .padding()
                    .background(.white.opacity(0.4))
                    .cornerRadius(15)
                    
                    ScrollView(.horizontal){
                    HStack{
//                        ForEach(C.Places){ Place in
//                                ZStack{
//                                    VStack{
//
//                                        Image(Place)
//                                            .resizable()
//                                            .frame(width: 200, height: 150)
//                                            .cornerRadius(10)
//                                    
//                                        Text(Place)
//                                            .foregroundColor(.black)
//                                            .font(.custom("Amiri-Italic", size: 26))
//
//                                    }
//                                    }
//                                .frame(width: 200, height: 200)
//                                .background(.white.opacity(0.4))
//                                .cornerRadius(10)
//                                .onTapGesture {
//                                    place.toggle()
//                                }
//                                .sheet(isPresented: $place){
//                                    ThirdView(PlaceInfo: PlaceModel(Name: "Bosphorus", Information: "m"))
//                                }
//                            }
                        }
                    }
                    }
                Spacer()
            }

            }
//        .navigationBarHidden(true)
        }
    }


//struct SecChooseView_Previews: PreviewProvider {
//    static var previews: some View {
//       NavigationView {
//        SecChooseView(C: RegionModel(NameRegion: "m", Places: "n"), M: PlaceModel(Name: "Dubai", Information: "."))
//        }
//    }
//}
