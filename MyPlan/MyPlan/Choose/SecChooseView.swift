//
//  SecChooseView.swift
//  MyPlan
//
//  Created by Mac on 01/09/2022.
//

import SwiftUI

struct SecChooseView: View {
    
    var M : RegionModel
    
    @State var place = false
    
    var body: some View {
        
        ZStack{
            
            Color("BG").ignoresSafeArea()
            VStack{
                ZStack{
                    Image(M.NameRegion)
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea()
                    HStack{
                        Spacer()
                        Text(M.NameRegion)
                            .font(.custom("Amiri-BoldItalic", size: 25))
                            .foregroundColor(.black)
                            .padding()
                            .background(.white.opacity(0.4))
                            .cornerRadius(15)
                    }
                }
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
                        ForEach(M.Places, id: \.self){ Place in
                                ZStack{
                                    VStack{

                                        Image(Place)
                                            .resizable()
                                            .frame(width: 200, height: 150)
                                            .cornerRadius(10)
                                    
                                        Text(Place)
                                            .foregroundColor(.black)
                                            .font(.custom("Amiri-Italic", size: 26))

                                    }
                                    }
                                .frame(width: 200, height: 200)
                                .background(.white.opacity(0.4))
                                .cornerRadius(10)
                                .onTapGesture {
                                    place.toggle()
                                }
                                .sheet(isPresented: $place){
                                    ThirdView()
                                }
                            }
                        }
                    }
                    
                Spacer()
                    }
            }

            }
        }
    }


//struct T1View_Previews: PreviewProvider {
//    static var previews: some View {
//        T1View()
//    }
//}
