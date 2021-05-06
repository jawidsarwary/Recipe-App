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
            List(model.recipes){ r in
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
                            Text(r.name)
                        }
                    })
                
                
            }
            .navigationBarTitle("All Recipes")
        }
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}

 
