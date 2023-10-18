//
//  ContentView.swift
//  Stocks
//
//  Created by Esraa Ragab on 18/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HeaderView()
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(20)
                List(DataModel.data, id: \.self) { object in
                    ListCellView(object: object)
                }.listStyle(PlainListStyle())
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
