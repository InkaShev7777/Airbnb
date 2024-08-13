//
//  WishlistView.swift
//  Airbnb
//
//  Created by Ilya Schevchenko on 13.08.2024.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in view your wishlists.")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once you`ve logged in")
                        .font(.footnote)
                }
                .padding()
                Button {
                    print("Log in")
                } label: {
                    Text("Log in")
                }
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                Spacer()
                    
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistView()
}
