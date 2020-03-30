//
//  CardView.swift
//  Cards
//
//  Created by Admin on 3/30/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var cards: Card
    var body: some View {
        
        ScrollView(.horizontal, content: {
            HStack(alignment: .center, spacing: 10) {
                    VStack {
                            Image(cards.iamgeName)
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)

                    HStack {
                        VStack(alignment: .leading) {
                            Text(cards.header)
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text(cards.subheader)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                            Text("Written".uppercased())
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .layoutPriority(100)

                        Spacer()
                    }
                    .padding()
                }
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                )
                .padding([.top, .horizontal])
            }
        })

    
    }
}

