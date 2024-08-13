//
//  ExploreService.swift
//  Airbnb
//
//  Created by Ilya Schevchenko on 13.08.2024.
//

import Foundation

class ExploreService {
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview.shared.listing
    }
}
