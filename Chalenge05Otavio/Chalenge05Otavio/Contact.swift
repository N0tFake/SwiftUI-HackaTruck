//
//  Contact.swift
//  Chalenge05Otavio
//
//  Created by Student11 on 25/01/23.
//

import Foundation

struct Contact: Codable, Identifiable {
    let id: Int
    var first_name: String
    var age: Int
    var ip_address: String
    
}

class ContactApi: ObservableObject {
    @Published var contacts = [Contact]()
    
    func getData(completion:@escaping ([Contact]) -> ()) {
        guard let url = URL(string: "https://mocki.io/v1/ca7a437a-855e-47a8-883a-98e9f64bdfa7") else {
            print("Error")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let contacts = try! JSONDecoder().decode([Contact].self, from: data!)
            print(contacts)
            DispatchQueue.main.async {
                completion(contacts)
            }
        }.resume()
    }
}
