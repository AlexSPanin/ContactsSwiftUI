//
//  DetailsPersonView.swift
//  ContactsSwiftUI
//
//  Created by Александр Панин on 03.03.2022.
//

import SwiftUI

struct DetailsPersonView: View {
    
    let person: Person
    
    var body: some View {
        
        List {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
            RowsDetailsPerson(
                nameImage: "phone",
                title: person.phoneNumber)
            RowsDetailsPerson(
                nameImage: "tray",
                title: person.email)
        }
        .listStyle(.insetGrouped)
    }
}

struct DetailsPersonView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPersonView(person: Person(
            id: 0,
            name: "Panin",
            surname: "Alexander",
            email: "panin@1970@gmail.com",
            phoneNumber: "+7(903) 136-8004"
        )
        )
    }
}
