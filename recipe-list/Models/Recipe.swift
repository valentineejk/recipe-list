//
//  Recipe.swift
//  recipe-list
//
//  Created by Valentineejk on 21/10/2022.
//

import Foundation

class Recipe: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var ingredients:[Ingredients]
    var directions:[String]
    var highlights:[String]
}
class Ingredients: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var num:Int?
    var denum:Int?
    var unit: String?

}
