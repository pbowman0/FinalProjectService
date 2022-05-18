//
//  babySitting.swift
//  FinalProjectService
//
//  Created by Student on 5/17/22.
//

import SwiftUI

struct babySittingView: View {
    var body: some View {
        
        babySittingDropDown()
    }
}

struct babySittingView_Previews: PreviewProvider {
    static var previews: some View {
        babySitting()
    }
}

struct babySittingDropDown: View {
    
    @State var availableBabySitters = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20, content: {
            
            HStack{
                
                Text("Available Service Providers").fontWeight(.heavy).foregroundColor(.white)
                
                Image(systemName: availableBabySitters ? "chevron.up" : "chevron.down").resizable().frame(width: 20, height: 10)
            }.onTapGesture {
                self.availableBabySitters.toggle()
            }
            
            if availableBabySitters{
                Button(action: {
                    
                }) {
                    Text("JoyCare")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("SitterHub")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Nanny Lane")
                }.foregroundColor(.white)
                
                
            }
             
        })
        .padding(7)
        .background(LinearGradient(gradient: .init(colors: [.blue,.yellow]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .animation(.spring())
    }
}

