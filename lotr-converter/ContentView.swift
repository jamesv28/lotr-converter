//
//  ContentView.swift
//  lotr-converter
//
//  Created by James Volmert on 9/19/24.
//

import SwiftUI

struct ContentView: View {
    // let is the same as const
    // State tells struct to allow the variable to change
    @State var showExchangeInfo = false
    @State var showCurrencyInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    @State var leftCurrency: Currency = .silverPiece
    @State var rightCurrency: Currency = .goldPiece
    var body: some View {
        ZStack {
            // background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack {
                // pony, text, conversion section, and info button
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                HStack {
                    VStack {
                        HStack {
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        // text field - $ creates a binding
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                    .padding(.bottom, -10)
                    .onTapGesture {
                        showCurrencyInfo.toggle()
                    }
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    VStack {
                        HStack {
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.bottom, -10)
                    .onTapGesture {
                        showCurrencyInfo.toggle()
                    }
                    
                    
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                HStack {
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo) {
                        InfoView()
                    }
                    .sheet(isPresented: $showCurrencyInfo) {
                        SelectCurrency(topCurrency: leftCurrency, bottomCurrency: rightCurrency)
                    }
                }
                
                
            }
//            .border(.blue)
            
        }
    }
}

#Preview {
    ContentView()
}
