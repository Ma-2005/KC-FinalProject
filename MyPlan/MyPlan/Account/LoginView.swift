//
//  LoginView.swift
//  MyPlan
//
//  Created by Mac on 03/09/2022.
//

import SwiftUI

struct SecureTextField: View {
    
    @State private var isSecureField: Bool = true
    @State  var text: String
    
    var body: some View {
        HStack{
            if isSecureField {
                SecureField("    Password", text: $text )
            } else {
                TextField(text, text: $text )
            }
        }.overlay(alignment: .trailing) {
            Image(systemName: isSecureField ? "eye.slash" : "eye")
                .padding()
                .onTapGesture {
                    isSecureField.toggle()
                }
        }
    }
}

struct LoginView: View {
    
    @State var ShowMenu : Bool = false
    
    @State var Email = ""
    @State private var Password = ""
    
    var body: some View {
        ZStack{
            Color("BG").ignoresSafeArea()
            VStack{
                VStack{
                    Spacer()
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .background(.white.opacity(0.4))
                        .cornerRadius(25)
                    
                    Text("login with your account")
                        .font(.custom("Amiri-BoldItalic", size: 28))
                        .padding(.horizontal)
                        .background(.white.opacity(0.4))
                        .cornerRadius(25)
                    Spacer()
                }.padding()
                
                VStack(spacing:10){
                    VStack(spacing:-10){
                        HStack(spacing:-10){
                            Text("Email :")
                                .font(.custom("Amiri-Bold", size: 24))
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                                .padding()
                            
                            
                            TextField(" google@gmail.com  ", text: $Email )
                                .font(.custom("Amiri-Bold", size: 24))
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack(spacing:-10){
                            Text("Password :")
                                .font(.custom("Amiri-Bold", size: 24))
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                                .padding()
                            
                            SecureTextField(text: Password)
                                .font(.custom("Amiri-Bold", size: 24))                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        HStack{
                            
                            Text("Don't have an account?")
                                .foregroundColor(.black)
                            
                            NavigationLink(destination: SignUpView()) {
                                Text("Create an account ")
                                    .foregroundColor(.blue)

                            }
                            
                        }.padding()
                        Spacer()
                        NavigationLink(destination: HomeView()) {
                            Text("login")
                                .font(.custom("Amiri-BoldItalic", size: 35))
                                .foregroundColor(.black)
                                .frame(width: 285, height:100)
                                .background(.white.opacity(0.4))
                                .cornerRadius(25)
                                
                        }
                        
                        Spacer()
                    }
                }
                
                Spacer()
            }
            GeometryReader { _ in
              
              HStack {
                Spacer()
                
                SideMenuView()
                  .offset(x: ShowMenu ? 0 : UIScreen.main.bounds.width)
                  .animation(.easeInOut(duration: 0.4), value: ShowMenu)
              }
              
            }
            .background(Color.black.opacity(ShowMenu ? 0.7 : 0))

        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
          
          Button {
            self.ShowMenu.toggle()
          } label: {
            
            if ShowMenu {
              
              Image(systemName: "xmark")
                .resizable()
                .frame(width: 25, height: 20)
                .foregroundColor(.black)
                
            } else {
              Image(systemName: "line.3.horizontal")
                .resizable()
                .frame(width: 25, height: 20)
                .foregroundColor(.black)

    }
}
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
