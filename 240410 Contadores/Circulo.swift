//
//  Circulo.swift
//  240410 Contadores
//
//  Created by Luis on 10/4/24.
//

import SwiftUI

struct Circulo: View {
    @Binding var contador:Int
    var color:Color
    
    var body: some View {
        Button(action: {self.contador = contador + 1}){
            Text("\(contador)")
        }
    }
}

struct Circulo_Previews: PreviewProvider {
    static var previews: some View {
        Circulo(contador:Int, color:Int)
    }
}
