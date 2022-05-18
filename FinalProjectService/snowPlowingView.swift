//
//  snowPlowingView.swift
//  FinalProjectService
//
//  Created by Student on 5/17/22.
//

import SwiftUI

struct snowPlowingView: View {
    var body: some View {
        snowPlowingDropDown()
    }
}

struct snowPlowingView_Previews: PreviewProvider {
    static var previews: some View {
        snowPlowingView()
    }
}

struct snowPlowingDropDown: View {
    
    @State var availableSnowPlowers = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20, content: {
            
            HStack{
                
                Text("Available Service Providers").fontWeight(.heavy).foregroundColor(.white)
                
                Image(systemName: availableSnowPlowers ? "chevron.up" : "chevron.down").resizable().frame(width: 20, height: 10)
            }.onTapGesture {
                self.availableSnowPlowers.toggle()
            }
            
            if availableSnowPlowers{
                Button(action: {
                    
                }) {
                    Text("Olson's")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Doering Landscape")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Apex Landscaping")
                }.foregroundColor(.white)
                
                
            }
             
        })
        .padding(7)
        .background(LinearGradient(gradient: .init(colors: [.blue,.yellow]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .animation(.spring())
    }
}
