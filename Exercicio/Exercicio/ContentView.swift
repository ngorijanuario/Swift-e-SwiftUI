//
//  ContentView.swift
//  Exercicio
//
//  Created by Ngori Januario on 29/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        Form{
            
            //Primeira secção
            Section{
                HStack{
                    Image(systemName: "airplane")
                    Text("Modo avião")
                }
                
                HStack{
                    Image(systemName: "wifi")
                    Text("Wi-Fi")
                    Spacer()
                    Text("Auminglip")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                }
            }
            
            //Segunda secção
            Section{
                HStack{
                    Image(systemName: "folder.fill.badge.plus")
                    Text("Notificaçōes")
                }
                
                HStack{
                    Image(systemName: "speaker.3.fill")
                    Text("Som e audio")
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
