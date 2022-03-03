//
//  NumbersPersonsView.swift
//  ContactsSwiftUI
//
//  Created by Александр Панин on 03.03.2022.
//

import SwiftUI

struct NumbersPersonsView: View {
    
    let persons: [Person]
    
    var body: some View {
        
        NavigationView {
            
            List(persons) { person in
                Section(person.fullName) {
                    RowsDetailsPerson(nameImage: "phone", title: person.phoneNumber)
                    RowsDetailsPerson(nameImage: "tray", title: person.email)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Contacts List")
        }
    }
}

struct NumbersPersonsView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersPersonsView(persons: Person.getContactList())
    }
}
