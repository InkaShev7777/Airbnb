//
//  ListingImageCaruseleView.swift
//  Airbnb
//
//  Created by Ilya Schevchenko on 12.08.2024.
//

import SwiftUI

struct ListingImageCaruseleView: View {
    let listing: Listing
    
    var body: some View {
        // images
        TabView {
            ForEach(listing.imageURLs, id: \.self) { image in
               Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCaruseleView(listing: DeveloperPreview.shared.listing[0])
}
