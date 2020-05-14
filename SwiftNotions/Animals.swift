//
//  Animals.swift
//  SwiftNotions
//
//  Created by Sengsathit on 14/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct Animals: View {
    
    var animals: [Animal]
    
    var body: some View {
        List {
            ForEach(animals) { animal in
                NavigationLink(destination: AnimalDetails(animal: animal), label: {
                    Text("\(animal.name)")

                }
)
            }.navigationBarTitle("Animaux")
        }
    }
}

struct Animals_Previews: PreviewProvider {
    static var previews: some View {
        Animals(animals: [Animal]())
    }
}
