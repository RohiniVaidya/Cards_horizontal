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

    var pages:[PageData] = [
        PageData(id: 0, imageName: "hiit", title: "Excercise 1", isLastPage: false),
        PageData(id: 1, imageName: "hiit", title: "Excercise 2", isLastPage: false),
        PageData(id: 2, imageName: "hiit", title: "Excercise 3", isLastPage: false),
        PageData(id: 3, imageName: "hiit", title: "Excercise 4", isLastPage: true)

    ]
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            
            SwipableView(pages: pages, index: $index)
            HStack(spacing: 8) {
            
                ForEach(0..<self.pages.count)
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

            
        }.navigationBarBackButtonHidden(true)
            
    }
}

struct PagerView_Previews: PreviewProvider {
    static var previews: some View {
        PagerView()
    }
}
