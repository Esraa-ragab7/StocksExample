//
//  ListCellView.swift
//  Stocks
//
//  Created by Esraa Ragab on 18/10/2023.
//

import SwiftUI

struct ListCellView: View {
    var object: Stock
    
    var body: some View {
        HStack {
            VStack {
                HStack{
                    Image(systemName: "\(object.up ? "arrow.up.square.fill": "arrow.down.square.fill")")
                        .foregroundColor(object.up ? .green : .red)
                    Text("\(object.up ? "Today's Stock Gainer" : "Today's Stock Drop")")
                        .padding(5)
                }.frame(maxWidth: .infinity,alignment: .leading)
                Text(object.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }.frame(maxWidth: .infinity, alignment: .leading)
            Text("\(object.up ? "+" : "")\(String(format: "%.2f", object.change))%")
                .font(.headline)
                .padding(10)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .foregroundColor(object.up ? .green : .red)
        }
    }
}

struct ListCellView_Previews: PreviewProvider {
    @State static var object = DataModel.data[0]
    
    static var previews: some View {
        ListCellView(object: object)
    }
}
