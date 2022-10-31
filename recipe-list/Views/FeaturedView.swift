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
        Text("Featured, World!")
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
    }
}
