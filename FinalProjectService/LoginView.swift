//
//  ContentView.swift
//  FinalProjectService
//
//  Created by Student on 3/29/22.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack(spacing: 15){
            Spacer()
            Text("APP NAME")
                .font(.system(size: 64, weight: .semibold))
                .foregroundColor(.white)
            HStack{
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                TextField("Email", text: $email)
            }.frame(height: 68)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            HStack{
                Image(systemName: "lock")
                    .foregroundColor(.gray)
                SecureField("Password", text: $password)
            }.frame(height: 68)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            Button(action: {}) {
                Text("Login")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .medium))
            }.frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(Color.red.opacity(0.8))
            .cornerRadius(8)
            .padding(.horizontal,20)
            Button(action: {}) {
                Text("Login")
                    .foregroundColor(<#T##color: Color?##Color?#>)
            }
            Spacer()
        }.background(
            Image("LoginScreen")
                .resizable()
                .aspectRatio(contentMode: .fill)
        ).edgesIgnoringSafeArea(.all)
    }
}
        
       

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView().previewDevice("iPhone 8")
            LoginView().previewDevice("iPhone x")
            LoginView().previewDevice("iPhone 11 Pro")
        }
    }
}
