//
//  InfoView.swift
//  ContactListLiveCode
//
//  Created by Tom Huynh on 22/7/25.
//

import SwiftUI

struct InfoView: View {
    var text: String
    var imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundStyle(.rmitRed)
                    Text(text)
                        .foregroundStyle(.rmitBlue)
                }
            )
    }
}

#Preview {
    ZStack {
        Color("rmit-blue")
            .ignoresSafeArea()
        VStack {
            InfoView(text: "0123456789", imageName: "phone.fill")
            InfoView(text: "tom.huynh@rmit.edu.vn", imageName: "envelope.fill")
        }
    }
}
