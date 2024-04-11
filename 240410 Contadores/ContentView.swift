//
//  ContentView.swift
//  240410 Contadores
//
//  Created by Luis on 10/4/24.
//

import SwiftUI


struct ContentView: View {
    @State var contador1 = 0
    @State var contador2 = 0
    @State var contador3 = 0
    @State var contador = 0
  
    
    var body: some View {

        VStack {
            Text("\(contador1 + contador2 + contador3)")
                .font(.largeTitle)
                .bold()
                .padding()
                .frame(width: 200, height: 200)
                .background(.gray)
                .cornerRadius(75)
            
            HStack{
                Circulos(contador: $contador1, colorCirculo: .red)
                Circulos(contador: $contador2, colorCirculo: .green)
                Circulos(contador: $contador3, colorCirculo: .blue)
            }.padding(.vertical,20)
        }
        .padding(.vertical,50)
    }


    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
