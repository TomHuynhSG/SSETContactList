//
//  ContactRow.swift
//  ContactListLiveCode
//
//  Created by Tom Huynh on 22/7/25.
//

import SwiftUI

struct ContactRow: View {
    var contact: Contact
    
    var body: some View {
        HStack {
            contact.image
                .resizable()
                .scaledToFit()
                .frame(width: 50)
            Text(contact.name)
        }
    }
}

#Preview {
    VStack {
        ContactRow(contact: contacts[0])
        ContactRow(contact: contacts[1])
        ContactRow(contact: contacts[2])
        ContactRow(contact: contacts[3])
        ContactRow(contact: contacts[4])
    }
    
}
