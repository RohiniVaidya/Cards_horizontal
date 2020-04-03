//
//  PageView.swift
//  Cards
//
//  Created by Admin on 3/31/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct PageView: View {
    
    var pageData: Exercises
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    
    var body: some View {
        
            VStack{
                ZStack{
                    Circle()
                        .frame(width: 100.0, height: 100.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.565, saturation: 0.503, brightness: 0.938)/*@END_MENU_TOKEN@*/)
                    Text(String(pageData.repititions))
                }
                VStack{
                    Text(pageData.name)
                        .font(.headline).fontWeight(.bold)
                        .lineLimit(nil).padding()
                    
                    Text(pageData.description)

                        .lineLimit(nil)
                        .foregroundColor(.gray)
                }.frame(width: 300, height: 200)
                .multilineTextAlignment(.center)
                
            }
            .frame(width: 300, height: 600)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 130/255, green: 130/255, blue: 150/255, opacity: 0.4), lineWidth: 2)
                    .padding([.bottom])
            )
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pageData: Exercises(id: 0, name: "layaExercises ", description: "layaExercises", repititions: 23))
    }
}
