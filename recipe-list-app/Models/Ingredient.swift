//
//  Ingredient.swift
//  recipe-list-app
//
//  Created by Pryesh Gohil on 19/12/2022.
//

import Foundation

class Ingredient : Identifiable, Decodable {
    var id: UUID?
    var name:String
    var num: Int?
    var denon: Int?
    var unit:String?
}
