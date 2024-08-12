//
//  ExploreView.swift
//  Airbnb
//
//  Created by Ilya Schevchenko on 12.08.2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        
        NavigationStack {
            ScrollView {
                // searct / filter
                SearchAndFilterBar()
                
                // listing items
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 10, id: \.self) { listning in
                        NavigationLink(value: listning) {
                            ListingItemView()
                                 .frame(height: 400)
                                 .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    ExploreView()
}
