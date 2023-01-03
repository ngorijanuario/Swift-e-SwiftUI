//
//  ContentView.swift
//  Locais
//
//  Created by Ngori Januario on 03/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            
            VStack(alignment: .leading) {
                Text("Word Tour")
                    .font(.title)
                .foregroundColor(.brown)
                
                HStack {
                    Text("Parque Nacional do Bicuar")
                        .font(.subheadline)
                    
                    Spacer()
                    Text("Angola")
                        .font(.subheadline)
                }
                
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()

                    Text("Sobre")
                        .font(.title2)
                    Text("O Park do Bicuar é lindo e esta localizado em Angola")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
