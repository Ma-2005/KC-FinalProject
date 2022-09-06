//
//  SecCreateView.swift
//  MyPlan
//
//  Created by Mac on 02/09/2022.
//

import SwiftUI

struct SecCreateView: View {
    var body: some View {
        ZStack{
            Color("BG").ignoresSafeArea()
            
            VStack(spacing:12){
                ScrollView{
                ForEach(CustomPlans){ plan in
                    HStack{
                        VStack{
                            
                            Text(plan.PlanName)
                                .font(.custom("Amiri-BoldItalic", size: 24))
                                .frame(height: 50)
                                .modifier(MoodTextView())
                                .padding()
                                
                            Spacer()
                            AddPlanView(TextIn: "Country : \(plan.MyCountry)")
                                .modifier(OtherMood())
                            
                            AddPlanView(TextIn: "Region : \(plan.MyRegion)")
                                .modifier(OtherMood())
                            
                            AddPlanView(TextIn: "Days : \(plan.MyDays)")
                                .modifier(OtherMood())
                            
                            VStack{
                                AddPlanView(TextIn: "Places :")
                                    .modifier(OtherMood())
                                    .frame(height: 50)
                                    .padding()
                                
                                ScrollView(.horizontal) {
                                    HStack(spacing: 20) {
                                        ForEach(Plcs, id: \.self){ Newplace in
                                            
                                            Text("\(Newplace)  ")
                                            
                                        }
                                    }
                                }
                                .font(.custom("Amiri-BoldItalic", size: 24))
                                .frame(height: 25)
                                .modifier(MoodTextView())
                                .padding()
                            }
                            
                            
                            VStack{
                                HStack{
                                    Text("Note : \n \(plan.MyNote)")
                                        .modifier(OtherMood())
                                    Spacer()
                                }
                                
                            }
                            .padding()
                        Spacer()
                        }
                        .padding()
                    Spacer()
                }
                    .padding()
                }
            }
            .font(.custom("Amiri-BoldItalic", size: 25))
            .modifier(OtherMood())
                
        }
        }
        
        
    }
}

struct SecCreateView_Previews: PreviewProvider {
    static var previews: some View {
        SecCreateView()
    }
}


