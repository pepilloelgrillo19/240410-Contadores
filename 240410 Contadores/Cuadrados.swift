//
//  Cuadrados.swift
//  240410 Contadores
//
//  Created by Luis on 11/4/24.
//

import SwiftUI

struct Cuadrados: View {
    var body: some View {
        @ObservedObject var contadorCuadrado: ContadorSquare
        var colorCuadrado:Color
        var body: some View {
            ZStack{
                Button(action: {contador += 1}){
                    Square()
                        .frame(width: 100)
                        .foregroundColor(colorCuadrado)
                }
                Text("\(contadorCuadrado)")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .bold()
                    .padding()
            }
        }
    }}


struct Cuadrados_Previews: PreviewProvider {
    static var previews: some View {
        Cuadrados(contadorCuadrado: ContadorSquare(), colorCuadrado = .black)
    }
}
