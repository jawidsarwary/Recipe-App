//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Jawid on 05/05/2021.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView{
            RecipeFeaturedView()
                .tabItem {
                    VStack{
                        Image(systemName: "star")
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
