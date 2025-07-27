//
//  CircleView.swift
//  ContactListLiveCode
//
//  Created by Tom Huynh on 22/7/25.
//

import SwiftUI

struct CircleView: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color("rmit-red"), lineWidth: 3))
            .shadow(color:Color("rmit-blue"), radius: 10)
    }
}

#Preview {
    CircleView(image: contacts[0].image)
}
