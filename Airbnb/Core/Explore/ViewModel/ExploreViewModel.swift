//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by Ilya Schevchenko on 13.08.2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    
    private let service: ExploreService
    private var listingsCopy = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings()}
    }
    
    func fetchListings() async {
        do{
            self.listings = try await service.fetchListing()
            self.listingsCopy = listings
        } catch {
            print("DEBUG: Faild to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        let filteredListing = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListing.isEmpty ? listingsCopy : filteredListing
    }
}
