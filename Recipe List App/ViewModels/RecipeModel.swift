//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Jawid on 03/05/2021.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        self.recipes = DataService.getLocalData() 
    }
    
    static func getPortion(ingredient:Ingredient, recipeServings:Int, targetServings:Int) -> String {
        
        return String(targetServings)
        
    }
    
}
