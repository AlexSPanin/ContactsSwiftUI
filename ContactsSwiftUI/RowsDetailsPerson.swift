//
//  RowsDetailsPerson.swift
//  ContactsSwiftUI
//
//  Created by Александр Панин on 03.03.2022.
//

import SwiftUI

struct RowsDetailsPerson: View {
    let nameImage: String
    let title: String

    var body: some View {
        HStack{
            Image(systemName: nameImage)
                .resizable()
                .frame(width: 20, height: 20, alignment: .leading)
                .foregroundColor(.blue)
            Text(title)
                .frame(alignment: .leading)
                .font(.caption)
            Spacer()
        }
    }
}

struct RowsDetailsPerson_Previews: PreviewProvider {
    static var previews: some View {
        RowsDetailsPerson(
            nameImage: "phone",
            title: "+7(903) 136-8004"
            )
    }
}
