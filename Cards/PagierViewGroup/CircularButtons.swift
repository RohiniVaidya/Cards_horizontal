//
//  CircularButtons.swift
//  Cards
//
//  Created by Admin on 3/31/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct CircularButtons: View {
    
    @Binding var isSelected: Bool
    let btnAction: () -> Void
    
    var body: some View {

        Button(action: {
            self.btnAction()
            
        }, label: {
            Circle()
                .frame(width: 20.0, height: 10.0)
                .accentColor(isSelected ? .gray : .black)
        })

    }
}
