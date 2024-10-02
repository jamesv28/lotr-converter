//
//  SelectCurrency.swift
//  lotr-converter
//
//  Created by James Volmert on 9/24/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var topCurrency: Currency = .silverPiece
    @State var bottomCurrency: Currency = .goldPiece
    var body: some View {
        ZStack {
            // background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Select the currency you are starting with: ")
                    .fontWeight(.bold)
                
                IconGrid(currency: topCurrency)
                Text("Selcect the currency you want to convert with")
                    .fontWeight(.bold)
                IconGrid(currency: bottomCurrency)

                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency( )
}
