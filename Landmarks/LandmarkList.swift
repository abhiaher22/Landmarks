//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Abhijeet Aher on 12/22/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarkData, id: \.id, rowContent: { (landmark) in
                NavigationLink(destination:LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            })
        .navigationBarTitle(Text("Landmark"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
