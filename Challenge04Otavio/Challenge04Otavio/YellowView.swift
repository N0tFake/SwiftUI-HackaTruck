//
//  YellowView.swift
//  Challenge04Otavio
//
//  Created by Student11 on 20/01/23.
//

import SwiftUI

struct YellowView: View {
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            Text("Amarelo")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct YellowView_Previews: PreviewProvider {
    static var previews: some View {
        YellowView()
    }
}
