//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Bob Coleman on 3/3/23.
//

import SwiftUI

struct AppTabView: View {
    
    @StateObject private var viewModel = AppTabViewModel()
    
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem { Label("Map", systemImage: "map") }
                .toolbarBackground(.visible, for: .tabBar)
            
            LocationListView()
                .tabItem { Label("Locations", systemImage: "building") }
            
            NavigationStack { ProfileView() }
            .tabItem { Label("Profile", systemImage: "person") }
        }
        .task {
            try? await CloudKitManager.shared.getUserRecord()
            viewModel.checkIfHasSeenOnboard()
        }
        .sheet(isPresented: $viewModel.isShowingOnboardView) {
            OnboardView()
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView().environmentObject(LocationManager())
            .preferredColorScheme(.dark)
    }
}
