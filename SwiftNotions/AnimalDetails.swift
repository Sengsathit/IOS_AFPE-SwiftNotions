//
//  AnimalDetails.swift
//  SwiftNotions
//
//  Created by Sengsathit on 14/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct AnimalDetails: View {
    
    var animal: Animal
    
    var body: some View {
        VStack {
            Text("Nom : \(animal.name)")
            Text("Nom : \(animal.category.rawValue)")
        }.navigationBarTitle(animal.name)
    }
}

struct AnimalDetails_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetails(animal: Animal(name: "Hirondelle", category: .bird))
    }
}
