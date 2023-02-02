//
//  ContentView.swift
//  desafio01
//
//  Created by Student11 on 18/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textFieldControl: String = ""
    @State private var text: String = ""
    var body: some View {
        VStack{
            Label("\(text)", systemImage: "star")
            Spacer()
            Image("bluePen")
                .clipShape(Circle())
            Text("HackTruck")
                .foregroundColor(.blue)
                .font(.title)
                .bold()
            HStack {
                Text("Maker")
                    .foregroundColor(.yellow)
                Text("Space")
                    .foregroundColor(.red)
            }
            
            Spacer()
            
            TextField(
                "Digite algo",
                text: $textFieldControl
            )
            .padding()s
            
            Button(action: {}){
                Text("Enviar")
                    .frame(width:200, height: 40)
                    .background(Color(.blue))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }
            Spacer()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
