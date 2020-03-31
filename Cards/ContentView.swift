//
//  ContentView.swift
//  Cards
//
//  Created by Admin on 3/30/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    var cards: [Card] = [
        Card(id: 0, iamgeName: "workout", header: "Monday", subheader: "Choose your workout"),
        Card(id: 1, iamgeName: "workout", header: "Tuesady", subheader: "Choose your workout"),
        Card(id: 2, iamgeName: "workout", header: "Wednesday", subheader: "Choose your workout"),
        Card(id: 3, iamgeName: "workout", header: "Thursday", subheader: "Choose your workout")
        
    ]
    
    
    var body: some View {
        
        NavigationView{
                VStack(alignment: .leading, spacing: 8){
                    Text("Training Club")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    Text("High quality training is the most important tool you have to make your company successful. We are dedicated to providing you the best training available in the industry.")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                        .frame(width: 300.0).padding(.leading)
                    ScrollView(.horizontal){

                    HStack{
                        
                        ForEach(cards, id: \.id){
                            card in
                            NavigationLink(destination: TasksListView()){
                                
                                CardView(cards: card)

                            }

                        }
                        
                    }.frame(height: 300)
                    }

                }
                
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


