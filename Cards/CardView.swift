//
//  CardView.swift
//  Cards
//
//  Created by Admin on 3/30/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI


struct Card: Identifiable {
    let id: Int
    var title: String
}


struct CardView: View {
    
    var day: Days
    var body: some View {
        
        ScrollView(.horizontal, content: {
            HStack(alignment: .center, spacing: 10) {
                VStack {
                    
                    Image("music").renderingMode(.original).resizable().clipped().frame(height: 200)
                        .aspectRatio(contentMode: .fit).padding()
                    HStack {
                        VStack(alignment: .leading) {
                            Text(day.title)
                                .font(.headline).fontWeight(.heavy)
                                    .foregroundColor(.primary)
                            Text("Get Started")
                                .fontWeight(.medium)
                                .foregroundColor(.secondary)
                            
                        }
                        Spacer()
                    }
                    .padding()
                    }.frame(width: 300, height: 300)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2)
                )
                    .padding()
                    .border(/*@START_MENU_TOKEN@*/Color.green/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
        })
        
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(day: Days(id: 0, title: "Day 1", exercises: [Exercises(id: 0, name: "", description: "", repititions: 0)]))
        
    }
}
