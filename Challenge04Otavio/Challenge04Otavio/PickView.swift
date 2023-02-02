//
//  PickView.swift
//  Challenge04Otavio
//
//  Created by Student11 on 20/01/23.
//

import SwiftUI

struct PickView: View {
    
    @State private var bgColor = Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0)
    
    var body: some View {
        ZStack{
            Color(uiColor: UIColor(bgColor)).ignoresSafeArea()
            ColorPicker(
                "Selecione Uma cor",
                selection: $bgColor
            )
            .padding()
        }
    }
}

struct PickView_Previews: PreviewProvider {
    static var previews: some View {
        PickView()
    }
}
