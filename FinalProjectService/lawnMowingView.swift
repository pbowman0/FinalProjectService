//
//  lawnMowingView.swift
//  FinalProjectService
//
//  Created by Student on 5/17/22.
//

import SwiftUI

struct lawnMowingView: View {
    var body: some View {
        
        lawnMowingDropDown()
    }
}

struct lawnMowingView_Previews: PreviewProvider {
    static var previews: some View {
        lawnMowingView()
    }
}


struct lawnMowingDropDown: View {
    
    @State var availableLawnMowers = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20, content: {
            
            HStack{
                
                Text("Available Service Providers").fontWeight(.heavy).foregroundColor(.white)
                
                Image(systemName: availableLawnMowers ? "chevron.up" : "chevron.down").resizable().frame(width: 20, height: 10)
            }.onTapGesture {
                self.availableLawnMowers.toggle()
            }
            
            if availableLawnMowers{
                Button(action: {
                    
                }) {
                    Text("Lawnstarter")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Turf Care")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Mowerworks")
                }.foregroundColor(.white)
                
                
            }
             
        })
        .padding(7)
        .background(LinearGradient(gradient: .init(colors: [.blue,.yellow]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .animation(.spring())
    }
}
