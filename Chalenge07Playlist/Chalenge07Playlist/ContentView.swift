//
//  ContentView.swift
//  Chalenge07Playlist
//
//  Created by Student11 on 26/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var musics = [Music]()
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .leading){
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()
                
                ScrollView{
                    Image("capaPlaylist")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        
                    VStack(alignment: .leading){
                        VStack(alignment: .leading){
                            Text("Só as melhores")
                                .foregroundColor(.white)
                                .font(.title)
                                .bold()
                              
                            HStack{
                                Image(systemName: "person.circle.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("Fulano de Tal")
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(.trailing, 130)
                        
                        
                        ForEach(musics) { music in
                            NavigationLink(destination: MusicDetailsView()) {
                                HStack(alignment: .center){
                                    AsyncImage(url: URL(string: music.imgCapa)){ image in
                                        image
                                            .resizable()
                                            .scaledToFit()
                                            .frame(maxWidth: 50)

                                    }placeholder: {
                                        Text("Carregando")
                                    }


                                    VStack(alignment: .leading){
                                        Text(music.nome)
                                            .foregroundColor(.white)
                                            .bold()
                                        Text(music.artist)
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            
                        }
                        
                    }

                }
                .frame(maxWidth: .infinity)
                .onAppear(){
                    Api().getData{ musics in
                        self.musics = musics
                    }
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
