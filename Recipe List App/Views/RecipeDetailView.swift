//
//  RecipeDetailsView.swift
//  Recipe List App
//
//  Created by Jawid on 04/05/2021.
//

import SwiftUI

struct RecipeDetailsView: View {
    var recipe:Recipe
    
    @State var selectedServingSize = 2
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                //MARK: Images
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                //MARK: Serving Title
                Text(recipe.name)
                    .font(Font.custom("Avenir Heavy", size: 24))
                    .padding(.top,20)
                    .padding(.leading)
                
                //MARK: Serving Size Picker
                VStack(alignment: .leading){
                    Text("Select Your Serving Size:")
                        .font(Font.custom("Avenir Heavy", size: 16))
                    Picker("", selection: $selectedServingSize){
                        
                        Text("2").tag(2)
                        Text("4").tag(4)
                        Text("6").tag(6)
                        Text("8").tag(8)
                        
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width:160)
                    .font(Font.custom("Avenir", size: 15))
                }
                .padding()
              
                //MARK: Ingredients
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(Font.custom("Avenir Heavy", size: 16))
                        .padding([.bottom, .top], 5)
                    
                    ForEach(recipe.ingredients){ item in
                        
                        Text(". " + RecipeModel.getPortion(ingredient: item, recipeServings: recipe.servings, targetServings: selectedServingSize) + " "+item.name)
                    }
                    .font(Font.custom("Avenir", size: 15))
                }
                .padding(.horizontal)
                
                Divider()
                //MARK: Directions
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(Font.custom("Avenir Heavy", size: 16))
                        .padding([.bottom, .top], 5)
                    
                    ForEach(0..<recipe.directions.count, id:\.self){ index in
                        
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5)
                            .font(Font.custom("Avenir", size: 15))
                        
                    }
                  
                }
                .padding(.horizontal)
            }
            
        } 
    }
    
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {

        let model = RecipeModel()
        
        RecipeDetailsView(recipe:model.recipes[0])
    }
}
