//
//  LandmarkDetail.swift
//  Locais
//
//  Created by Ngori Januario on 28/01/23.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            //importando o map
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            //Importando a imagem do circulo
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            // Componetes textuais do aplicativo
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                .foregroundColor(.brown)
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()

                Text("Sobre\(landmark.name)")
                        .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
