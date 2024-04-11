//
//  Circulos.swift
//  240410 Contadores
//
//  Created by Luis on 10/4/24.
//

import SwiftUI

struct Circulos: View {
    @Binding var contador:Int
    var colorCirculo:Color
    var body: some View {
        ZStack{
            Button(action: {contador += 1}){
                Circle()
                    .frame(width: 100)
                    .foregroundColor(colorCirculo)
            }
            Text("\(contador)")
                .font(.title)
                .foregroundColor(Color.white)
                .bold()
                .padding()
        }
    }
}

struct Circulos_Previews: PreviewProvider {
    static var previews: some View {
        Circulos(contador: .constant(0), colorCirculo: .black)
    }
}
