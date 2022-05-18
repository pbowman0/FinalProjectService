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
        
        VStack(alignment: .leading, spacing: 10, content: {
            
            HStack{
                
                Text("Available Services").fontWeight(.heavy).foregroundColor(.white)
                
                Image(systemName: availableServices ? "chevron.up" : "chevron.down").resizable().frame(width: 20, height: 10)
            }.onTapGesture {
                self.availableServices.toggle()
            }
            
            if availableServices{
                Button(action: {
                    
                }) {
                    Text("Lawn Mowing")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Baby Sitting")
                }.foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Tutoring")
                }.foregroundColor(.white)
            }
             
        })
        .padding(7)
        .background(LinearGradient(gradient: .init(colors: [.blue,.yellow]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .animation(.spring())
    }
}
