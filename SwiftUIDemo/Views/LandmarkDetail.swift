//
//  LandmarkDetail.swift
//  SwiftUIDemo
//
//  Created by Prashantdan on 03/02/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark:Landmark
    
    var body: some View {
        VStack {
            MapView(coordinates: landmark.locationCoordinates).frame(height:300)
            CircleImage(image: landmark.image)
                .offset(y:-120)
                .padding(.bottom, -120)
            VStack (alignment:.leading){
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }.font(.subheadline).foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name)") .font(.title2)
                Text(landmark.description)
            } .padding()
            Spacer()
        }.navigationTitle(landmark.name)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[2])
    }
}
