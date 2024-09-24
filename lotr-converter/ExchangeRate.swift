//
//  ExchangeRate.swift
//  lotr-converter
//
//  Created by James Volmert on 9/23/24.
//

import SwiftUI

struct ExchangeRate: View {
    // instead of @state, we are not changing the view later in the app lifecycle
    let leftImage: ImageResource
    let textString: String
    let rightImage: ImageResource
    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            Text(textString)
            Image(.goldpenny)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpiece, textString: "1 Gold piece = 4 Gold pennies", rightImage: .goldpiece)
}
