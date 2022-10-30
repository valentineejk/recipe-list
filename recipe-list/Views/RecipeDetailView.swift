//
//  RecipeDetailView.swift
//  recipe-list
//
//  Created by Valentineejk on 22/10/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            //MARK: recipe Image
            VStack(alignment: .leading){
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding()
                    
                
                //MARK: Ingredientts
                VStack(alignment: .leading, spacing: 5) {
                    Text("Ingrdients")
                        .font(.headline)
                        .padding(.bottom, 10)
                    
                    ForEach(recipe.ingredients){ ingre in
                        Text(" * " + ingre.name)
                    }
                }
                .padding(.horizontal)
                
                Divider()
                
                //MARK: Directions
                VStack(alignment: .leading, spacing: 5) {
                    Text("Directions")
                        .font(.headline)
                        .padding(.bottom, 10)
                    
                    ForEach(0..<recipe.directions.count, id: \.self){ index in
                        Text(String(index+1) + " * " + recipe.directions[index])
                            .padding(.bottom, 5)
                    }
                  
                }
                .padding(.horizontal)
            }
           
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
