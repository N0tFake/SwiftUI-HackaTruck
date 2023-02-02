//
//  GrayView.swift
//  Challenge04Otavio
//
//  Created by Student11 on 20/01/23.
//

import SwiftUI

struct GrayView: View {
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            Text("Cinza")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct GrayView_Previews: PreviewProvider {
    static var previews: some View {
        GrayView()
    }
}
