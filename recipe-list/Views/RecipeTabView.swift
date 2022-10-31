//
//  RecipeTabView.swift
//  recipe-list
//
//  Created by Valentineejk on 29/10/2022.
//

import SwiftUI

struct RecipeTabView: View {
    
    
    //reference the model
//      @ObservedObject var model = RecipeModel()
    
    var body: some View {
        TabView{
            FeaturedView()
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
            
            
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
