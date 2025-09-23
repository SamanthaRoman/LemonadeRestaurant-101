//
//  PremiumBadge.swift
//  LemonadeRestaurant
//
//  Created by Samantha Roman on 9/22/25.
//

import SwiftUI

struct PremiumBadge: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            
            Text("Premium")
                .font(.caption)
        }
        .font(.caption)
        .foregroundStyle(.orange)
        .padding(6)
        .background(.orange.opacity(0.1))
        .cornerRadius(6)
    }
}

#Preview {
    PremiumBadge()
}
