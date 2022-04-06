//
//  ListView.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Felipe Grosze Nipper de Oliveira on 05/04/22.
//

import SwiftUI

struct ListView: View {
    
    var viewModel: ListViewModel = ListViewModel()
    
    @State var recipes: [RecipeDTO] = []
    
    var body: some View {
        List(recipes) { recipe in
            ListItemView(recipe: recipe)
        }
        .onAppear(){
            recipes = viewModel.getRecipes()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
