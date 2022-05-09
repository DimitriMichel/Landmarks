//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Dimitri PL on 5/8/22.
//

import SwiftUI

struct FavoriteButton: View {

    @Binding var isSet:Bool

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorites", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(false))
    }
}
