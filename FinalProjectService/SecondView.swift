//
//  SecondView.swift
//  FinalProjectService
//
//  Created by Student on 5/17/22.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        
        DropDown()
    }
}


struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

struct DropDown: View {
    
    @State var availableServices = false
    
    
    var body: some View {
        NavigationView{
        VStack(alignment: .leading, spacing: 20, content: {
            
            HStack{
                
                Text("Available Services").fontWeight(.heavy).foregroundColor(.white)
                
                Image(systemName: availableServices ? "chevron.up" : "chevron.down").resizable().frame(width: 20, height: 10)
            }.onTapGesture {
                self.availableServices.toggle()
            }
            
            if availableServices{
                
                NavigationLink(destination: lawnMowingView()){
                    Text("Lawn Mowing").foregroundColor(.white)
                }
            
                
                NavigationLink(destination: babySittingView()){
                    Text("Baby Sitting").foregroundColor(.white)
                }
                
                NavigationLink(destination: tutoringView()){
                    Text("Tutoring").foregroundColor(.white)
                }
                
                NavigationLink(destination: petSittingView()){
                    Text("Pet Sitting").foregroundColor(.white)
                }
                
                NavigationLink(destination: houseCleaning()){
                    Text("House Cleaning").foregroundColor(.white)
                }
                
                NavigationLink(destination: snowPlowingView()){
                    Text("Snow Plowing").foregroundColor(.white)
                }
            }
             
        })
        .padding(7)
        .background(LinearGradient(gradient: .init(colors: [.blue,.yellow]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .animation(.spring())
    }
}
}
