//
//  LandmarkRow.swift
//  SwiftUIDemo
//
//  Created by Prashantdan on 02/02/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[4])
            .previewLayout(.fixed(width: 400, height: 70))
    }
}
