//
//  ContentView.swift
//  TabView1
//
//  Created by Ngori Januario on 30/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            t1()
                .tabItem{
                    Image(systemName: "house")
                    Text("Inicio")
                }
            t2()
                .tabItem{
                    Image(systemName: "person")
                    Text("Account")
                }
            t3()
                .tabItem{
                    Image(systemName: "bag")
                    Text("Carinho")
                }
        }
        .accentColor(.brown)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
