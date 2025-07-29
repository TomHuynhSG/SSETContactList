//
//  ContentView.swift
//  ContactListLiveCode
//
//  Created by Tom Huynh on 22/7/25.
//

import SwiftUI

struct ContactCard: View {
    var contact: Contact
    var body: some View {
        ZStack {
            Color("rmit-blue")
                .ignoresSafeArea()
            VStack{
                MapView(myLocation: contact.locationCoordinate)
                    .frame(height: 250)
                CircleView(image: contact.image)
                    .offset(y:-100)
                    .padding(.bottom, -100)
                Text(contact.name)
                    .font(.system(size: 40, weight: .bold, design: .serif))
                    .foregroundStyle(.white)
                
                Image("rmit-logo-white")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 225)
                
                Group {
                    InfoView(text: contact.phone, imageName: "phone.fill")
       
                    InfoView(text: contact.email, imageName: "envelope.fill")
                }
                .padding()      
            }
        }
        .toolbarBackground(
            Color("rmit-blue"),
            for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar) // This makes the back button white
    }
}

#Preview {
    ContactCard(contact: contacts[0])
}
