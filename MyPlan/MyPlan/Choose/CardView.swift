//
//  CardView.swift
//  MyPlan
//
//  Created by Mac on 07/09/2022.
//

import SwiftUI

struct CardView: View {
    
    @State var title : String
    @State var location : String
    @State var image : String
    
    var body: some View {
        ZStack{
            Color.white
            
                VStack{
               
                    Image(image)
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(15)
                        .shadow(color: Color("BG") ,radius: 4)
                    VStack(spacing: 8) {
                        HStack{
                        Text(title)
                                .fontWeight(.bold)
                            Spacer()
                        }.padding(.leading, 10)
                    
                        HStack{
                        
                        Image(systemName: "mappin.and.ellipse")
                        
                        Text(location)
                                .foregroundColor(Color("BG"))
            Spacer()
                    }
                        .padding(.leading, 10)
                    
                    }
                    }
                .frame(width: 165, height: 250)
               
           
            
        }
        .frame(width: 200, height: 250)
            .cornerRadius(25)
          .shadow(color: Color("BG") ,radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "Khalifa tower", location: "Dabai", image: "Dubai")
    }
}
