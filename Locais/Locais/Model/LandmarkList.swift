//
//  LandmarkList.swift
//  Locais
//
//  Created by Ngori Januario on 28/01/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["IPhone SE (2nd generation)", "IPhone Xs Max"], id: \.self){ deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: "IPhone SE (2nd genration)"))
                .previewDisplayName(deviceName)
        }
    }
}
