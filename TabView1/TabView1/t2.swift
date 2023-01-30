//
//  t2.swift
//  TabView1
//
//  Created by Ngori Januario on 30/01/23.
//

import SwiftUI

struct t2: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200,height: 200)
                .foregroundColor(.yellow)
            Text("\(2)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
        .padding()
    }
}

struct t2_Previews: PreviewProvider {
    static var previews: some View {
        t2()
    }
}
