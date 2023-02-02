//
//  ContentView.swift
//  Challenge03Otavio
//
//  Created by Student11 on 19/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var peso: Double = 0.0
    @State private var altura: Double = 0.0
    @State private var imc: String = ""
    @State private var colorBg = "Normal"
    
    var body: some View {
        ZStack{
            Color(colorBg).ignoresSafeArea()
            VStack{
                Text("Calcular IMC")
                    .font(.title)
                    .bold()
                
                TextField(
                    "Sua Altura",
                    value: $altura,
                    format: .number
                )
                .keyboardType(.numberPad)
                .background(.white)
                .multilineTextAlignment(.center)
                .clipShape(Capsule())
                
                TextField(
                    "Seu Peso",
                    value: $peso,
                    format: .number
                )
                .keyboardType(.numberPad)
                .background(.white)
                .multilineTextAlignment(.center)
                .clipShape(Capsule())
                
                Button(action: {
                    let metros = altura/100.0
                    let result = peso/(metros*metros)
                    print(result)
                    if result < 18.5 {
                        imc = "Baixo peso"
                        colorBg = "Pbaixo"
                    }else if result >= 18.5 && result <= 24.99{
                        imc = "Normal"
                        colorBg = "Normal"
                    }else if result >= 25 && result <= 29.99 {
                        imc = "Sobrepeso"
                        colorBg = "Sobrepeso"
                    }else if result > 30 {
                        imc = "Obesidade"
                        colorBg = "Obesidade"
                    }
                }){
                    Text("Calcular")
                        .frame(width: 100, height: 50)
                        .background(Color(.green))
                        .foregroundColor(.black)
                        .clipShape(Capsule())
                }
                Spacer()
                Text("\(imc)")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFit()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
