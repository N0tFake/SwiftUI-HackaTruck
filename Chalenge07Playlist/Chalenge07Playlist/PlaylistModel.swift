//
//  PlaylistModel.swift
//  Chalenge07Playlist
//
//  Created by Student11 on 26/01/23.
//

import Foundation

struct Music: Codable, Identifiable {
    let id = UUID()
    var _id: String
    var nome: String
    var artist: String
    var mp3: String
    var imgCapa: String
}

class Api: ObservableObject {
    @Published var musics = [Music]()
    
    func getData(completion:@escaping ([Music]) -> ()) {
        guard let url = URL(string: "http://localhost:1880/uft/so/playlist") else {
            print("Error")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let data = try! JSONDecoder().decode([Music].self, from: data!)
            DispatchQueue.main.async {
                completion(data)
            }
        }.resume()
        
    }
    
    
}
