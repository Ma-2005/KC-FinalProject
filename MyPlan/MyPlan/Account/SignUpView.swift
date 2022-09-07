//
//  SignUpView.swift
//  MyPlan
//
//  Created by Mac on 05/09/2022.
//

import SwiftUI

struct OtherSecureTextField: View {
    
    @State private var AreSecureField: Bool = true
    @State  var MyText: String
    
    var body: some View {
        HStack{
            if AreSecureField {
                SecureField("    Password", text: $MyText )
            } else {
                TextField(MyText, text: $MyText )
            }
        }.overlay(alignment: .trailing) {
            Image(systemName: AreSecureField ? "eye.slash" : "eye")
                .padding()
                .onTapGesture {
                    AreSecureField.toggle()
                }
        }
    }
}

struct SignUpView: View {
    
    @State var FirstName = ""
    @State var LastName = ""
    @State var BirthDay = Date()
    

    @State var NewEmail = ""
    @State private var MyPassword = ""
    
    var body: some View {
        ZStack{
            Color("BG").ignoresSafeArea()
            
            VStack(spacing: 45){
            
                Spacer()
                VStack{
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .background(.white.opacity(0.4))
                        .cornerRadius(25)
                    
                    Text("Create your account")
                        .font(.custom("Amiri-BoldItalic", size: 28))
                        .padding(.horizontal)
                        .background(.white.opacity(0.4))
                        .cornerRadius(25)
                    
                }
                
               
                    
                VStack {
                    VStack {
                            HStack(spacing: 50){
                                VStack{
                                    Text("First name :")
                                    
                                    TextField("  First name", text: $FirstName)
                                        .font(.custom("Amiri-Bold", size: 24))
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        
                                }
                                
                                VStack{
                                    Text("Last name :")
                                    
                                    TextField("  First name", text: $LastName)
                                        .font(.custom("Amiri-Bold", size: 24))
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        
                                }
                            }
                    }
                
                    
                    
                    VStack {
                        DatePicker(selection: $BirthDay, in: ...Date(), displayedComponents: .date) {
                                       Text("Date of Birth :")
                        }
                        
                        HStack(spacing:-10){
                            Text("Email :")
                                .font(.system(size: 20, weight: .semibold, design: .serif))
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                                .padding()
                            
                            
                            TextField(" google@gmail.com", text: $NewEmail )
                                .font(.custom("Amiri-Bold", size: 24))
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack(spacing:-10){
                            Text("Password :")
                                .font(.custom("Amiri-Bold", size: 24))
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                                .padding()
                            
                            SecureTextField(text: MyPassword)
                                .font(.custom("Amiri-Bold", size: 24))                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack{
                            
                            Text("Have an account?")
                                .foregroundColor(.black)
                            
                            NavigationLink(destination: LoginView()) {
                                Text("Login ")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
                    NavigationLink(destination: HomeView()) {
                        Text("Sign In")
                            .font(.custom("Amiri-BoldItalic", size: 35))
                            .foregroundColor(.black)
                            .frame(width: 285, height:100)
                            .background(.white.opacity(0.4))
                            .cornerRadius(25)
                    }
                    
                Spacer()
              
                
            }
           
            .frame(width: .infinity, height:800)
            .padding()
        }
        
        .navigationBarBackButtonHidden(true)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
