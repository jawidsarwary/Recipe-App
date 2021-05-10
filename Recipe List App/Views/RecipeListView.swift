//
//  ContentView.swift
//  Recipe List App
//
//  Created by Jawid on 03/05/2021.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model : RecipeModel
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading){
                Text("All Recipes")
                    .font(Font.custom("Avenir Heavy", size: 24))
                    .padding(.top,40)
                ScrollView{
                    LazyVStack(alignment: .leading){
                        ForEach(model.recipes){ r in
                            NavigationLink(
                                destination: RecipeDetailsView(recipe:r),
                                label: {
                                    HStack(spacing: 20.0){
                                        //MARK: Item in Row
                                        Image(r.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .clipped()
                                            .cornerRadius(5)
                                        VStack(alignment: .leading){
                                            Text(r.name)
                                                .foregroundColor(.black)
                                                .font(Font.custom("Avenir Heavy", size: 16))
                                            RecipeHighlights(highlights: r.highlights)
                                                .foregroundColor(.black)
                                        }
                                    }
                                })
                        }
                    }
                    
                }
                
            }
            .navigationBarHidden(true)
            .padding(.leading)
        }
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}


