//
//  CircleImage.swift
//  SwiftUIDemo
//
//  Created by Prashantdan on 01/02/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image //created image variable
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("svp"))
    }
}
