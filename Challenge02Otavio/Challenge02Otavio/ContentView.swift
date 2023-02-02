//
//  ContentView.swift
//  Challenge02Otavio
//
//  Created by Student11 on 19/01/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var showAlert: Bool = false
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .opacity(0.07)
                .edgesIgnoringSafeArea(.all)
            VStack(){
                Text("Bem vindo, \(text)")
                    .bold()
                    .font(.title)
                TextField(
                    "Digite algo",
                    text: $text
                )
                .multilineTextAlignment(.center)
                
                Spacer()
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                Image("truck")
                    .resizable()
                    .scaledToFit()
                    .frame(width:300)
                
                Spacer()
                
                Button("Entrar"){
                    showAlert = true
                }
                .alert(isPresented: $showAlert){
                    Alert(
                        title:Text("ALERT!!!"),
                        message: Text("VC está no lata velha")
                        )
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
