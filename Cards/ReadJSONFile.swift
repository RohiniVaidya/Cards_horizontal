//
//  ReadJSONFile.swift
//  Cards
//
//  Created by Admin on 4/2/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class DaysViewModel: ObservableObject {
        
    @Published var daysList = [Days]()
    
    init(){
        readLocalJSONFile()
    }
    
    func readLocalJSONFile()
    {
        if let path = Bundle.main.path(forResource: "data", ofType: "json"){
            do {
                let fileURL = URL(fileURLWithPath: path)

                let data =  try Data(contentsOf: fileURL)
                guard let jsonResponse = try? JSONDecoder().decode([Days].self, from: data) else{
                    return
                }
                DispatchQueue.main.async {
                    self.daysList = jsonResponse
                }
            }
            catch{
                print("error in parsing")
            }
        }
        
    }
}


struct Days: Decodable {
    var id: Int
    var title: String
    var exercises: [Exercises]
}


struct Exercises: Decodable, Identifiable {
    var id: Int
    var name:String
    var description: String
    var repititions: Int
}
