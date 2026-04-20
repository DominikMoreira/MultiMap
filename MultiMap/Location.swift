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
}
