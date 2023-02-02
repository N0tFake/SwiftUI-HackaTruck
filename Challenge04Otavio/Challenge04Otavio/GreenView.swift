//
//  GreenView.swift
//  Challenge04Otavio
//
//  Created by Student11 on 20/01/23.
//

import SwiftUI

struct GreenView: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            Text("Verde")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView()
    }
}
