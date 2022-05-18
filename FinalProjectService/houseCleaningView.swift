//
//  houseCleaning.swift
//  FinalProjectService
//
//  Created by Student on 5/17/22.
//

import SwiftUI

struct houseCleaning: View {
    var body: some View {
        houseCleaningDropDown()
    }
}

struct houseCleaning_Previews: PreviewProvider {
    static var previews: some View {
        houseCleaning()
    }
}

struct houseCleaningDropDown: View {
    
    @State var availableHouseCleaners = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20, content: {
            
            HStack{
                
                Text("Available Service Providers").fontWeight(.heavy).foregroundColor(.white)
                
                Image(systemName: availableHouseCleaners ? "chevron.up" : "chevron.down").resizable().frame(width: 20, height: 10)
            }.onTapGesture {
                self.availableHouseCleaners.toggle()
            }
            
            if availableHouseCleaners{
                Button(action: {
                    
                }) {
                    Text("Pro Housekeepers")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Maid's Magic")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("LizMarie Cleaning")
                }.foregroundColor(.white)
                
                
            }
             
        })
        .padding(7)
        .background(LinearGradient(gradient: .init(colors: [.blue,.yellow]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .animation(.spring())
    }
}

