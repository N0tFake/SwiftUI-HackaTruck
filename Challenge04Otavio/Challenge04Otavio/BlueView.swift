//
//  BlueView.swift
//  Challenge04Otavio
//
//  Created by Student11 on 20/01/23.
//

import SwiftUI

struct BlueView: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            Text("Azul")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView()
    }
}
