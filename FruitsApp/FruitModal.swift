//
//  FruitModal.swift
//  FruitsApp
//
//  Created by Manikandan.MC on 02/05/23.
//

import SwiftUI

struct Fruit: Identifiable {
    //var id: ObjectIdentifier
    
    var id = UUID()
    var title: String
    var headline :  String
    var image : String
    var gradientColors : [Color]
    var description : String
    var nutrition : [String]
}
    
