//
//  ContactsPersonsView.swift
//  ContactsSwiftUI
//
//  Created by Александр Панин on 03.03.2022.
//

import SwiftUI

struct ContactsPersonsView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                RowsContactsPersonsView(person: person)
            }
            .listStyle(.plain)
            .navigationTitle("Contacts List")
        }
    }
}

struct ContactsPersonsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsPersonsView(persons: Person.getContactList())
    }
}
