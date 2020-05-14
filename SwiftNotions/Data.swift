//
//  Data.swift
//  SwiftNotions
//
//  Created by Sengsathit on 14/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import Foundation


// Catégorie d'animaux
enum AnimalCategory: String {
    case bird = "Oiseau"
    case fish = "Poisson"
    case reptile = "Reptile"
}

// Modélisation l'animal
struct Animal: Identifiable {
    let id = UUID()
    var name: String
    var category: AnimalCategory
}

// Liste de tous les animaux
let animals = [
    Animal(name: "Hirondelle", category: .bird),
    Animal(name: "Requin", category: .fish),
    Animal(name: "Cobra", category: .reptile),
    Animal(name: "Aigle", category: .bird),
    Animal(name: "Espadon", category: .fish),
    Animal(name: "Lézard", category: .reptile),
    Animal(name: "Couleuvre", category: .reptile),
    Animal(name: "Héron", category: .bird),
    Animal(name: "Truite", category: .fish)
]

// Récupère la liste des animaux en fonction de la catégorie
func getAnimals(category: AnimalCategory) -> [Animal] {
    var filteredAnimals = [Animal]()
    
    animals.forEach { animal in
        if animal.category == category {filteredAnimals.append(animal)}
    }
        
    return filteredAnimals

}
