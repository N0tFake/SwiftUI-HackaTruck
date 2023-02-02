//
//  RedView.swift
//  Challenge04Otavio
//
//  Created by Student11 on 20/01/23.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            Text("Vermelho")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
