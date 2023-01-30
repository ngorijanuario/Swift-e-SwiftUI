//
//  t1.swift
//  TabView1
//
//  Created by Ngori Januario on 30/01/23.
//

import SwiftUI

struct t1: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200,height: 200)
                .foregroundColor(.blue)
            Text("\(1)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
        .padding()
    }
}

struct t1_Previews: PreviewProvider {
    static var previews: some View {
        t1()
    }
}
