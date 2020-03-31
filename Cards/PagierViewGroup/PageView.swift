//
//  PageView.swift
//  Cards
//
//  Created by Admin on 3/31/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct PageView: View {
    
    var pageData: PageData
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    
    var body: some View {
        
        VStack{
            ZStack{
                Image(pageData.imageName).resizable().clipped()
                .aspectRatio(contentMode: .fit)

                Text(pageData.title).font(.headline).fontWeight(.bold).padding()
            }
            
            if self.pageData.isLastPage{
                
                Button(action: {                        self.mode.wrappedValue.dismiss()
                }, label:{
                    Text("Done")
                }
                )
                
            }
        }
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pageData: PageData(id: 0, imageName: "hiit", title: "Some", isLastPage: true))
    }
}


struct PageData:Identifiable{
    
    var id: Int
    var imageName, title: String
    var isLastPage: Bool

}
