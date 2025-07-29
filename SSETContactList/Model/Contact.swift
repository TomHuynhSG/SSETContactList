//
//  Contact.swift
//  ContactListLiveCode
//
//  Created by Tom Huynh on 22/7/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Contact : Identifiable {
    var id: UUID = UUID()
    var name: String
    var email: String
    var phone: String
    var imageName: String
    
    var image: Image {
        Image(imageName)
    }
}
