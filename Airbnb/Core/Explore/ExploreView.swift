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
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 10, id: \.self) { listning in
                        Rectangle()
                            .frame(width: 370, height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
