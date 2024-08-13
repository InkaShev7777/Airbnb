//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by Ilya Schevchenko on 13.08.2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings()}
    }
    
    func fetchListings() async {
        do{
            self.listings = try await service.fetchListing()
        } catch {
            print("DEBUG: Faild to fetch listings with error: \(error.localizedDescription)")
        }
    }
}
