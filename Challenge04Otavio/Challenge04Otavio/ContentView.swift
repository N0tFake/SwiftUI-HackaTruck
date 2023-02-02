//
//  ContentView.swift
//  Challenge04Otavio
//
//  Created by Student11 on 20/01/23.
//

import SwiftUI

struct ContentView: View {
    
    init(){
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        TabView{
            BlueView()
                .tabItem{
                    Label("Blue", systemImage: "list.dash")
                }
            
            RedView()
                .tabItem{
                    Label("Red", systemImage: "list.dash")
                }
            
            GreenView()
                .tabItem{
                    Label("Verde", systemImage: "list.dash")
                }
            
            YellowView()
                .tabItem{
                    Label("Amarelo", systemImage: "list.dash")
                }
            
            GrayView()
                .tabItem{
                    Label("Cinza", systemImage: "list.dash")
                }
            
            PickView()
                .tabItem{
                    Label("Pick", systemImage: "pencil")
                }
        }
        .accentColor(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
