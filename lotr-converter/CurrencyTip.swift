//
//  CurrencyTip.swift
//  lotr-converter
//
//  Created by James Volmert on 10/3/24.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("Tap on left or right currencies to change the currency")
}
