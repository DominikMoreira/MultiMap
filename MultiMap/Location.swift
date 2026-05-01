//
//  Location.swift
//  MultiMap
//
//  Created by Dominik de Jesus Moreira on 20.04.26.
//

import MapKit

struct Location: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    func hash(into hasher: inout Hasher) {
        // Now, in terms of user functionality nothing has actually changed here, but this extra code does
        // matter because it´s saving the app from doing pointless work – we don’t need to hash every
        // property to get something useful.
        hasher.combine(id)
    }
}
