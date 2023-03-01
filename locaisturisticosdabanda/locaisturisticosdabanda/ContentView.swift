//
//  ContentView.swift
//  locaisturisticosdabanda
//
//  Created by Ngori Januario on 28/02/23.
//

import SwiftUI
import MapKit

struct AtributosdoLocais: Identifiable{
    let id = UUID()
    let nome: String
    let coordenadas: CLLocationCoordinate2D
    
}

struct ContentView: View {
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -14.918085, longitude: 13.497117),span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let locais = [
    AtributosdoLocais(nome: "Cristo Rei", coordenadas: CLLocationCoordinate2D(latitude: -14.939767969257124, longitude: 13.511879868671167)),
    AtributosdoLocais(nome: "Parque Da Nossa Sra Do Monte", coordenadas: CLLocationCoordinate2D(latitude: -14.936610011172187, longitude: 13.468817990335669))
    ]
    
    
    var body: some View {
        NavigationView{
            
            Map(coordinateRegion: $mapRegion, annotationItems: locais){ location in
                MapAnnotation(coordinate: location.coordenadas){
                    VStack{
                        NavigationLink{
                            Text(location.nome)
                        } label:{
                            Circle()
                                .stroke(.red, lineWidth: 3)
                                .frame(width: 44,height: 44)
                        }
                    }
                }
            }.navigationTitle("Locais turisticos")
                
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .ignoresSafeArea()
    }
}
