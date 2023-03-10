//
//  DubDubGrubApp.swift
//  DubDubGrub
//
//  Created by Bob Coleman on 3/3/23.
//

import SwiftUI

@main
struct DubDubGrubApp: App {
    
    let locationManager = LocationManager()
    
    var body: some Scene {
        WindowGroup {
            AppTabView().environmentObject(locationManager)
        }
    }
}
