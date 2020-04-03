//
//  PagerView.swift
//  Cards
//
//  Created by Admin on 3/31/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct PagerView: View {
    
    @State private var index: Int = 0
    var exercises: [Exercises]
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            
            SwipableView(pages: exercises, index: $index)
            HStack(spacing: 8) {
            
                ForEach(0..<self.exercises.count)
                {
                    index in
                   CircularButtons(isSelected: Binding<Bool>(
                    get: {
                        self.index == index
                        
                   },
                    set: { _ in })) {
                       withAnimation {
                           self.index = index
                       }
                   }
                }
            }
            .padding(.bottom, 12)

            
        }
            
    }
}

struct PagerView_Previews: PreviewProvider {
    static var previews: some View {
        PagerView(exercises: [])
    }
}
