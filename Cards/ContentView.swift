//
//  ContentView.swift
//  Cards
//
//  Created by Admin on 3/30/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI


struct Card: Identifiable {
    let id: Int
    let iamgeName, header, subheader: String
}

struct ContentView: View {
    
    var cards: [Card] = [
        Card(id: 0, iamgeName: "landscape", header: "Header", subheader: "Welcome to subheader"),
        Card(id: 1, iamgeName: "landscape", header: "Header", subheader: "Welcome to subheader"),
        Card(id: 2, iamgeName: "landscape", header: "Header", subheader: "Welcome to subheader"),
        Card(id: 3, iamgeName: "landscape", header: "Header", subheader: "Welcome to subheader")
        
    ]
    
    
    var body: some View {
        
        NavigationView{
            ScrollView(.horizontal){
                
                HStack{
                    
                    ForEach(cards, id: \.id){
                        card in
                        NavigationLink(destination: DetialView()){
                            
                            CardView(cards: card)

                        }

                    }
                    
                }.frame(height: 300)
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DetialView: View {
    var body: some View {
        
        Text("Detail View")
    }
}
