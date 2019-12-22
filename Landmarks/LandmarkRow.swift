//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Abhijeet Aher on 12/22/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
       
        HStack{
            landmark.image.resizable().frame(width:50, height:50)
            Text(landmark.name)
            Spacer()
        
        }.padding()
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
    }
}
