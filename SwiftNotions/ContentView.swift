//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Sengsathit on 07/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var login: String = ""               // identifiant saisi par l'utilisateur
    @State private var password: String = ""            // mot de passe saisi par l'utilisateur
    @State private var passwordControl: String = ""     // mot de passe confirmé par l'utilisateur
    @State private var showError: Bool = false          // affiche ou non le message d'erreur
    @State private var errorMessage: String = ""        // message d'erreur à afficher
    
    var body: some View {
        NavigationView {
            VStack {
                // Champs de saisie pour l'identifiant et le mot de passe
                TextField("Login", text: $login).padding().border(Color.blue, width: 2)
                TextField("Password", text: $password).padding().border(Color.purple, width: 2)
                TextField("Password control", text: $passwordControl).padding().border(Color.purple, width: 2)
                
                // Bouton de validation
                Button(action: {
                    
                }, label: {
                    Text("VALIDER").padding().foregroundColor(.white).background(Color.orange).cornerRadius(8)
                }).padding()
                
                Spacer()
                
            }.padding().navigationBarTitle("Inscription")
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
