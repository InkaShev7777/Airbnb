//
//  MainTabVeiw.swift
//  Airbnb
//
//  Created by Ilya Schevchenko on 13.08.2024.
//

import SwiftUI

struct MainTabVeiw: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    MainTabVeiw()
}
