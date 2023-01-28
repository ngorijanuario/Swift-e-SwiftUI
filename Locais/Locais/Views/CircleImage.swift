//
//  CircleImage.swift
//  Locais
//
//  Created by Ngori Januario on 03/01/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        //Criação da imagem
        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
        //Adicionar um sombreamentto de 7 pontos
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
