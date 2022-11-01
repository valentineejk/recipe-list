//
//  FeaturedView.swift
//  recipe-list
//
//  Created by Valentineejk on 31/10/2022.
//

import SwiftUI

struct FeaturedView: View {
    @EnvironmentObject var model:RecipeModel

    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 0) {
            Text("Featured Recipes")
                .font(.largeTitle)
                .bold()
                .padding(.leading)
            GeometryReader { geo in
                TabView {
                    
                    //loop through receipe
                    ForEach(0..<model.recipes.count) { index in
                        
                        //featured only
                        if model.recipes[index].featured == true {
                            
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                VStack(spacing: 0){
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    Text(model.recipes[index].name)
                                        .padding(5)
                                }
                            }
                            .frame(width: geo.size.width - 40, height: geo.size.height - 100)
                            .cornerRadius(15)
                            .shadow(color:Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
               
            }
            
            VStack(alignment: .leading, spacing: 10){
                Text("Preparatiion Time:")
                    .font(.headline)

                Text("1 hour")
                Text("Highlights")
                    .font(.headline)

                Text("Healthy, Hearty")

            }
            .padding(.leading)

        }

    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
            .environmentObject(RecipeModel())
    }
}
