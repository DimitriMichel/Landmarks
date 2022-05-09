//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Dimitri PL on 5/8/22.
//

/*Individual Row For Every Landmark*/
import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50, alignment: .leading)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

//Customize preview provide to only display the Landmark Row component
struct LandmarkRow_Previews: PreviewProvider {
    
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
            LandmarkRow(landmark: landmarks[4])

        }.previewLayout(.fixed(width: 300, height: 50))
    }
}
