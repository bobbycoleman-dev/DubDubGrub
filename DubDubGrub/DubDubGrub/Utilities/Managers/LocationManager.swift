//
//  LocationManager.swift
//  DubDubGrub
//
//  Created by Bob Coleman on 3/4/23.
//

import Foundation

final class LocationManager: ObservableObject {
    
    @Published var locations: [DDGLocation] = []
    var selectedLocation: DDGLocation?
}
