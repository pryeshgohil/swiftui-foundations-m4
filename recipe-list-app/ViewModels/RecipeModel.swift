//
//  RecipeModel.swift
//  recipe-list-app
//
//  Created by Pryesh Gohil on 11/12/2022.
//

import Foundation

class RecipeModel : ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
    }
}
