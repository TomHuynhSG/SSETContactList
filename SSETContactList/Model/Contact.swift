//
//  Contact.swift
//  ContactListLiveCode
//
//  Created by Tom Huynh on 22/7/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Contact : Identifiable, Codable {
    var id: Int
    var name: String
    var email: String
    var phone: String
    var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    // Computed property to expose the CLLocationCoordinate2D, keeping your view code unchanged
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

// Nested struct to match the structure of the "coordinates" object in the JSON
struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}



