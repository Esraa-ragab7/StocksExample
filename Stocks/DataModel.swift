//
//  DataModel.swift
//  Stocks
//
//  Created by Esraa Ragab on 18/10/2023.
//

import UIKit

struct Stock: Hashable {
    let id: Int
    var title: String
    var change: Double
    var up: Bool
}

class DataModel: NSObject {
    static let data: [Stock] = [
        Stock(id: 1, title: "ARAMCO", change: +9.89, up: true),
        Stock(id: 2, title: "ASEER", change: -10.0, up: false),
        Stock(id: 3, title: "Al Alamiya", change: -2.69, up: false),
        Stock(id: 4, title: "APC", change: +1.34, up: true),
        Stock(id: 5, title: "STC", change: -2.42, up: false),
        Stock(id: 6, title: "ZAIN KSA", change: +0.46, up: true),
        Stock(id: 7, title: "TAPRCO", change: +2.2, up: true)
    ]
}
