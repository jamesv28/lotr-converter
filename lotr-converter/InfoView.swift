//
//  InfoView.swift
//  lotr-converter
//
//  Created by James Volmert on 9/22/24.
//

import SwiftUI

struct InfoView: View {
    // @environment looks into the views environment
    // @Environment is a property wrapper
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            // background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                // title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates ")
                    .font(.title2)
                    .padding()
                
                ExchangeRate(leftImage: .goldpiece, textString: "1 Gold piece = 4 Gold pennies", rightImage: .goldpenny)
                ExchangeRate(leftImage: .goldpenny, textString: "One gold penny = 4 silver pennies", rightImage: .silverpenny)
                ExchangeRate(leftImage: .silverpiece, textString: "One silver piece = 4 silver pennies", rightImage: .silverpenny)
                ExchangeRate(leftImage: .silverpenny, textString: "One silver penny = 100 copper pennies", rightImage: .copperpenny)
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    InfoView()
}


