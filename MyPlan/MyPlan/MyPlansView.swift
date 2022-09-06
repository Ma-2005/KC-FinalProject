//
//  MyPlansView.swift
//  MyPlan
//
//  Created by Mac on 04/09/2022.
//

import SwiftUI

struct MyPlansView: View {
    var body: some View {
        ZStack{
            Color("BG").ignoresSafeArea()
        
            ScrollView{
            
                ForEach(CustomPlans){MyPlans in
                
                    HStack{
                    
                        VStack{
                        
                    HStack{
                       
                        Text(MyPlans.PlanName)
                            .font(.custom("Amiri-BoldItalic", size: 30))
                            .padding()
                            .background(.white.opacity(0.4))
                            .cornerRadius(8)
            }
                    HStack{
                        VStack(spacing: 10){
                            HStack{
                            Text("Country : \(MyPlans.MyCountry)")
                            
                                Spacer()
                            }
                            
                            HStack{
                            Text("Region : \(MyPlans.MyRegion)")
                            
                                Spacer()
                            }
                            
                            HStack{
                            Text("Days : \(MyPlans.MyDays)")
                        
                                Spacer()
                            }
                            
                    HStack{
                        Text("Places :")
                        
                            ScrollView(.horizontal) {
                                HStack(spacing: 20) {
                                    ForEach(Plcs, id: \.self){ Newplace in
                                        Text(Newplace)
                                            
    
        }
    }
        }
                            
                            .background(.white.opacity(0.7))
                            .cornerRadius(10)
    }
                            HStack{
                            Text("My Note : \n \(MyPlans.MyNote)")
                               
                            Spacer()
                            }
                    
        }
                        Spacer()
    }
        }
                        .font(.custom("Amiri-Bold", size: 24))
                        .padding()
                        .background(.white.opacity(0.4))
                        .cornerRadius(8)
                        Spacer()
                    }
                    .padding()
        }
                
                ForEach(MyReadyPlans){ MyPlan in
                
                    HStack{
                    
                        VStack{
                        
//                    HStack{
//
//                        Text(MyPlans.PlanName)
//                            .font(.custom("Amiri-BoldItalic", size: 30))
//                            .padding()
//                            .background(.white.opacity(0.4))
//                            .cornerRadius(8)
//            }
                    HStack{
                        VStack(spacing: 10){
//                            HStack{
//                            Text("Country : \(MyPlans.MyCountry)")
//
//                                Spacer()
//                            }
                            
                            HStack{
                            Text("Region : \(MyPlan.NameRegion)")
                            
                                Spacer()
                            }
                            
//                            HStack{
//                            Text("Days : \(MyPlan.MyDays)")
//
//                                Spacer()
//                            }
                            
                    HStack{
                        Text("Places :")
                        
                            ScrollView(.horizontal) {
                                HStack(spacing: 20) {
                                    ForEach(MyPlan.Places){ place in
                                        Text(place.Name)
                                            
    
        }
    }
        }
                            
                            .background(.white.opacity(0.7))
                            .cornerRadius(10)
    }
//                            HStack{
//                            Text("My Note : \n \(MyPlan.MyNote)")
//
//                            Spacer()
//                            }
                    
        }
                        Spacer()
    }
        }
                        .font(.custom("Amiri-Bold", size: 24))
                        .padding()
                        .background(.white.opacity(0.4))
                        .cornerRadius(8)
                        Spacer()
                    }
                    .padding()
        }
    }
        }
    }
}

struct MyPlansView_Previews: PreviewProvider {
    static var previews: some View {
        MyPlansView()
    }
}
