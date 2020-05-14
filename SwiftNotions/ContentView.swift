//
//  ContentView.swift
//  SwiftNotions
//
//  Created by Sengsathit on 09/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let categories = [AnimalCategory.bird, AnimalCategory.fish, AnimalCategory.reptile]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categories, id: \.self) { animalCategory in
                    
                    NavigationLink(destination: Animals(animals: getAnimals(category: animalCategory)), label: {
                        Text(animalCategory.rawValue)
                    })
                    
                    
                }
            }.navigationBarTitle("Catégories")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
