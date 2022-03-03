//
//  RowsContactsPersonsView.swift
//  ContactsSwiftUI
//
//  Created by Александр Панин on 03.03.2022.
//

import SwiftUI

struct RowsContactsPersonsView: View {
    @State private var isPresented = false
    let person: Person
    
    var body: some View {
        NavigationLink(person.fullName) {
            DetailsPersonView(person: person)
        }
    }
}

struct RowsContactsPersonsView_Previews: PreviewProvider {
    static var previews: some View {
        RowsContactsPersonsView(person: Person(
            id: 0,
            name: "Panin",
            surname: "Alexander",
            email: "panin@1970@gmail.com",
            phoneNumber: "+7(903) 136-8004"
        ))
    }
}
