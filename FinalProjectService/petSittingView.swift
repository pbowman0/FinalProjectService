//
//  petSitting.swift
//  FinalProjectService
//
//  Created by Student on 5/17/22.
//

import SwiftUI

struct petSitting: View {
    var body: some View {
        petSittingDropDown()
    }
}

struct petSitting_Previews: PreviewProvider {
    static var previews: some View {
        petSitting()
    }
}

struct petSittingDropDown: View {
    
    @State var availablePetSitters = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20, content: {
            
            HStack{
                
                Text("Available Service Providers").fontWeight(.heavy).foregroundColor(.white)
                
                Image(systemName: availablePetSitters ? "chevron.up" : "chevron.down").resizable().frame(width: 20, height: 10)
            }.onTapGesture {
                self.availablePetSitters.toggle()
            }
            
            if availablePetSitters{
                Button(action: {
                    
                }) {
                    Text("Fetch")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Wags2Whiskers")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Critter Sitters")
                }.foregroundColor(.white)
                
                
            }
             
        })
        .padding(7)
        .background(LinearGradient(gradient: .init(colors: [.blue,.yellow]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .animation(.spring())
    }
}
