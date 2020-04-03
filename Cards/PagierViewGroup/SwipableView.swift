//
//  SwipableView.swift
//  Cards
//
//  Created by Admin on 3/31/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct SwipableView: View {
    
    var pages: [Exercises]
    
    @Binding var index: Int
    @State var isUserSwiping = false
    @State var offset: CGFloat = 0
    
    var body: some View {
        GeometryReader{ geometry in
            ScrollView(.horizontal){
                HStack(alignment: .center, spacing: 0){
                    
                    ForEach(self.pages){ page in
                        PageView(pageData: page)
                        .frame(width: geometry.size.width,
                        height: geometry.size.height)
                    }
                    
                }
                
            }
        .content
            .offset(x: self.isUserSwiping ? self.offset : CGFloat(self.index) * -geometry.size.width)
        .frame(width: geometry.size.width, alignment: .leading)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        self.isUserSwiping = true
                        self.offset = value.translation.width + -geometry.size.width * CGFloat(self.index)
                    })
                    .onEnded({ value in
                        if value.predictedEndTranslation.width < geometry.size.width / 2, self.index < self.pages.count - 1 {
                            self.index += 1
                        }
                        if value.predictedEndTranslation.width > geometry.size.width / 2, self.index > 0 {
                            self.index -= 1
                        }
                        withAnimation {
                            self.isUserSwiping = false
                        }
                    })
            )
            
        }
    
        
        
    }
    
    
}
