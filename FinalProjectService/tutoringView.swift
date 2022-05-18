//
//  tutoringView.swift
//  FinalProjectService
//
//  Created by Student on 5/17/22.
//

import SwiftUI

struct tutoringView: View {
    var body: some View {
        tutoringDropDown()
    }
}

struct tutoringView_Previews: PreviewProvider {
    static var previews: some View {
        tutoringView()
    }
}

struct tutoringDropDown: View {
    
    @State var availableTutors = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20, content: {
            
            HStack{
                
                Text("Available Service Providers").fontWeight(.heavy).foregroundColor(.white)
                
                Image(systemName: availableTutors ? "chevron.up" : "chevron.down").resizable().frame(width: 20, height: 10)
            }.onTapGesture {
                self.availableTutors.toggle()
            }
            
            if availableTutors{
                Button(action: {
                    
                }) {
                    Text("Mathnasium")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Huntington Learning")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Kumon")
                }.foregroundColor(.white)
                
                
            }
             
        })
        .padding(7)
        .background(LinearGradient(gradient: .init(colors: [.blue,.yellow]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .animation(.spring())
    }
}

