//
//  RecipeHighlights.swift
//  Recipe List App
//
//  Created by Jawid on 10/05/2021.
//

import SwiftUI

struct RecipeHighlights: View {
    var allHighlights = ""
    
    init(highlights: [String]){
        for index in 0..<highlights.count{
            if index == highlights.count - 1 {
                allHighlights += highlights[index]
            }
            else{
                allHighlights += highlights[index] + ","
            }
        }
    }
    var body: some View {
        Text(allHighlights)
            .font(Font.custom("Avenir", size: 15))
            
    }
}

struct RecipeHighlights_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighlights(highlights: ["Test 1", "Test 2", "Test 3" ])
    }
}
