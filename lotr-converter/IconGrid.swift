//
//  IconGrid.swift
//  lotr-converter
//
//  Created by James Volmert on 10/1/24.
//

import SwiftUI

struct IconGrid: View {
    @Binding var currency: Currency

    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { coin in
                if currency == coin {
                    
                    CurrencyIcon(currencyImage: coin.image, currencyName: coin.name)
                        .shadow(color: .black, radius: 10)
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyIcon(currencyImage: coin.image, currencyName: coin.name)
                        .onTapGesture {
                            currency = coin
                        }
                }
            }
        }
    }
}

#Preview {
    IconGrid(currency: .constant(.silverPenny))
}
