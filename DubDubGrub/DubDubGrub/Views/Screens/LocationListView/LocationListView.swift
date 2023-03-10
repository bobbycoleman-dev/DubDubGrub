//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Bob Coleman on 3/3/23.
//

import SwiftUI

struct LocationListView: View {
    
    @EnvironmentObject private var locationManager: LocationManager
    @StateObject private var viewModel = LocationListViewModel()
    @Environment(\.dynamicTypeSize) var dynamicTypeSize
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(locationManager.locations, id: \.id) { location in
                    NavigationLink(value: location) {
                        LocationCell(location: location, profiles: viewModel.checkedInProfiles[location.id, default: []])
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel(Text(viewModel.createVoiceOverSummary(for: location)))
                    }
                    .listRowSeparator(.hidden)
                }
            }
            .navigationTitle("Grub Spots")
            .navigationDestination(for: DDGLocation.self) { location in
                viewModel.createLocationDetailView(for: location, in: dynamicTypeSize)
            }
            .task { await viewModel.getCheckedInProfilesDictionary() }
            .refreshable { await viewModel.getCheckedInProfilesDictionary() }
            .alert(item: $viewModel.alertItem) { $0.alert }
            .listStyle(.plain)
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView().environmentObject(LocationManager())
    }
}
