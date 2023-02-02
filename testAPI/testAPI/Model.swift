//
//  Model.swift
//  testAPI
//
//  Created by Student11 on 20/01/23.
//

import Foundation

struct Course: Codable, Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

class Api: ObservableObject {
    @Published var courses = [Course]()
    
    func fetch (completion:@escaping ([Course]) -> ()){
        guard let url = URL(string: "https://iosacademy.io/api/v1/courses/index.php") else {
            print("error")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let courses = try! JSONDecoder().decode([Course].self, from: data!)
            print(courses)
            DispatchQueue.main.async {
                completion(courses)
            }
        }.resume()
    }
}
