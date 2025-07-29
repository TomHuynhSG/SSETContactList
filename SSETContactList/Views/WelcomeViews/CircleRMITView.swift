//
//  CircleRMITView.swift
//  SSETContactList
//
//  Created by Tom Huynh on 29/7/25.
//

import SwiftUI

struct CircleRMITView: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(.white.opacity(0.4), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle()
                .stroke(.white.opacity(0.4), lineWidth: 90)
                .frame(width: 260, height: 260, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Image("rmit-logo-white")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
        }
    }
}


#Preview {
    ZStack {
        Color.rmitBlue
        CircleRMITView()
    }
    
}
