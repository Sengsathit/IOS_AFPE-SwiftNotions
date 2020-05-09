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
                
                // Afichage des messages d'erreur
                if showError {
                    Text(errorMessage).padding().foregroundColor(.white).background(Color.red)
                }
                
                // Bouton de validation
                Button(action: {
                    // TODO-4
                    // appeler la fonction de validation de l'inscription
                }, label: {
                    Text("VALIDER").padding().foregroundColor(.white).background(Color.orange).cornerRadius(8)
                }).padding()
                
                Spacer()
                
            }.padding().navigationBarTitle("Inscription")
        }
    }
    
    // TODO-2
    // Afin Véririfer la validité des saisies de l'utilisateur (login, password)
    // créez une fonction checkSubscription() capable d'envoyer une erreur.
    // Les cas d'erreur seront :
    // - identifiant trop court (dans ce cas renvoyer une erreur de type "identifiant invalide"
    // - mot de passe trop court (dans ce cas renvoyer une erreur de type "mot de passe invalide"
    // - les mots de passe ne correspondent pas (dans ce cas renvoyer une erreur de type "mots de passe non identiques"
    /*
     * ICI VOTRE CODE
     */
    
    
    // TODO-3
    // Afin de valider l'inscription, créez une fonction validate() qui utilisera la fonction checkSubscription() et qui traitera les eurreurs envoyés par celle-ci.
    /*
     * ICI VOTRE CODE en utilisant do-try-catch
     * Travaillez avec les variables login, password, passwordControl, showError, messageError
     */
    
    
    
}


// TODO-1
// Afin de gérer les erreurs pouvant survenir lors de l'inscription,
// créez un enum SubscriptionError qui adopte le protocole Error.
// Les cas d'erreur seront : identifiant invalide, mot de passe invalide, mots de passe ne correspondent pas
/*
 * ICI VOTRE CODE
 */


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
