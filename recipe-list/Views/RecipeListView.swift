//
//  ContentView.swift
//  recipe-list
//
//  Created by Valentineejk on 28/09/2022.
//

import SwiftUI

struct RecipeListView: View {
    
    
    //reference the model
      @ObservedObject var model = RecipeModel()
    var body: some View {
        
        NavigationView {
            List(model.recipes){ r in
                
                NavigationLink {
                    RecipeDetailView(recipe: r)
                } label: {
                     HStack(spacing: 20.0){
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50,  alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                          
                        Text(r.name)
                    }
                }

               
                
            }
            .navigationTitle("Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
