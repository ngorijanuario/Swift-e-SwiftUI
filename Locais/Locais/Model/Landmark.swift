//
//  Landmark.swift
//  Locais
//
//  Created by Ngori Januario on 12/01/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable{
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    //Passo 5 - propiedade para ler o nome da imagem
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    //Gerenciando informaçōes sobre a localização do ponto de referência
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
        latitude: coordinates.latitude,
        longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
    
}
