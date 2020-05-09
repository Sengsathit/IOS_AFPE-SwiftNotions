//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Sengsathit on 07/05/2020.
//  Copyright © 2020 Sengsathit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var login: String = ""
    @State var password: String = ""
    @State var passwordControl: String = ""
    @State var showError: Bool = false
    @State var errorMessage: String = ""
    
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
                    self.validate()
                }, label: {
                    Text("VALIDER").padding().foregroundColor(.white).background(Color.orange).cornerRadius(8)
                }).padding()
                
                }.padding().navigationBarTitle("Inscription")
        }
    }
    
    // Valide l'inscription
    func validate() {
        do {
            showError = false
            try checkSubscription()
        } catch {
            switch error {
            case SubscriptionError.invalidLogin:
                errorMessage = "Identifiant invalide  (6 caractères min)"
            case SubscriptionError.invalidPassword:
                errorMessage = "Mot de passe invalide (6 caractères min)"
            case SubscriptionError.passwordsNotMatching:
                errorMessage = "Les mots de passe ne correspondent pas"
            default:
                errorMessage = "Une erreur est survenue"
            }
            showError = true
        }
    }
    
    // Vérirife la validité des saisies de l'utilisateur (login, password)
    func checkSubscription() throws {
        if login.count < 6 {
            throw SubscriptionError.invalidLogin
        } else if password.count < 6 {
            throw SubscriptionError.invalidPassword
        } else if password != passwordControl {
            throw SubscriptionError.passwordsNotMatching
        }
    }
}

// Erreurs pouvant survenir lors de l'inscription
enum SubscriptionError: Error {
    case invalidLogin
    case invalidPassword
    case passwordsNotMatching
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
