//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Prashantdan on 02/02/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks){ landmarks in
                //LandmarkRow(landmark: landmarks)
                NavigationLink(destination: LandmarkDetail(landmark: landmarks)){
                    LandmarkRow(landmark: landmarks)
                }
            }.navigationBarTitle("Land Mark Lisst")
                Spacer()
//            ZStack{
//                Text("Test text")
//            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
