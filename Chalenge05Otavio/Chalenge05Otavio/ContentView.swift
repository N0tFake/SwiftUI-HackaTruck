//
//  ContentView.swift
//  Chalenge05Otavio
//
//  Created by Student11 on 25/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var contacts = [Contact]()
    
    var body: some View {
        List(contacts) { contact in
            
            VStack(alignment: .leading){
                Text(contact.first_name)
                    .font(.title)
                    .bold()
                    
                Text("Idade: \(contact.age)")
                    .bold()
                    .foregroundStyle(.gray)
                
                
                Text("Ip: \(contact.ip_address)")
                    .bold()
                    .foregroundColor(.gray)
            }
            .padding()
            
        }
        .onAppear() {
            ContactApi().getData{ (contacts) in
                self.contacts = contacts
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
