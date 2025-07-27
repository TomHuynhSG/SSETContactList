//
//  MapTest.swift
//  SSETContactList
//
//  Created by Tom Huynh on 27/7/25.
//

import SwiftUI
import MapKit


struct MapTest: View {
    // Center the map on Joshua Tree National Park.
    var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )


    var body: some View {
        Map(initialPosition: .region(region))
    }
}

#Preview {
    MapTest()
}
