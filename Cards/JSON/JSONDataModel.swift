//
//  JSONDataModel.swift
//  Cards
//
//  Created by Admin on 4/3/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI


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
