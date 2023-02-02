//
//  PalmasRegions.swift
//  Challenge08Mapotavio
//
//  Created by Student11 on 27/01/23.
//

import Foundation
import MapKit

struct Regions: Codable, Identifiable {
    let id = UUID()
    var local: String
    let latitude: Double
    let longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}


class Api: ObservableObject {
    @Published var regions = [Regions]()
    
    func getData(completion:@escaping ([Regions]) -> ()) {
        guard let url = URL(string: "http://localhost:1880/uft/so/getmaps") else {
            print("Error")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let data = try! JSONDecoder().decode([Regions].self, from: data!)
            //print(data)
            DispatchQueue.main.async {
                completion(data)
            }
        }.resume()
    }
}
