//
//  RecipeModel.swift
//  recipe-list
//
//  Created by Valentineejk on 21/10/2022.
//

import Foundation
class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
//    init(recipes: [Recipe] = [Recipe]()) {
//        self.recipes = recipes
//    }
    
    init(){
        //instance or dataservice
        self.recipes = DataService.getLocalData()
        
        //set the recipes property
    }
}
