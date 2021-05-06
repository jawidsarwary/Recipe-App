//
//  RecipeDetailsView.swift
//  Recipe List App
//
//  Created by Jawid on 04/05/2021.
//

import SwiftUI

struct RecipeDetailsView: View {
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                //MARK: Images
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                //MARK: Ingredients
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    ForEach(recipe.ingredients){ item in
                        Text(". " + item.name)
                    }
                }
                .padding(.horizontal)
                Divider()
                //MARK: Directions
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding([.bottom, .top], 5)
                    
                    ForEach(0..<recipe.directions.count, id:\.self){ index in
                        
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5)
                        
                    }
                  
                }
                .padding(.horizontal)
            }
            
        }
        .navigationBarTitle(recipe.name)
    }
    
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {

        let model = RecipeModel()
        
        RecipeDetailsView(recipe:model.recipes[0])
    }
}
