//
//  ContentView.swift
//  recipe-list-app
//
//  Created by Pryesh Gohil on 11/12/2022.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        NavigationView {
            
            VStack(alignment:.leading) {
                Text("All Recipes")
                    .bold()
                    .padding(.top, 40)
                    .font(.largeTitle)
                
                ScrollView {
                    LazyVStack(alignment:.leading) {
                        ForEach(model.recipes) { r in
                            NavigationLink(
                                destination: RecipeDetailView(recipe: r),
                                label: {
                                    
                                    // MARK: Row item
                                    HStack(spacing: 20.0) {
                                        Image(r.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .clipped()
                                            .cornerRadius(5.0)
                                        Text(r.name)
                                            .foregroundColor(.black)
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

struct Recipe_List_App_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
