//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Александр Панин on 03.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.getContactList()
    
    var body: some View {
        
        TabView {
            ContactsPersonsView(persons: persons)
                .tabItem {
                    Label("Contacts", systemImage: "person.3.fill")
                }
            
            NumbersPersonsView(persons: persons)
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
