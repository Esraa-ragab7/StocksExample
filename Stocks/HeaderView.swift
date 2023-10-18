//
//  HeaderView.swift
//  Stocks
//
//  Created by Esraa Ragab on 18/10/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 50.0) {
            HStack(alignment: .center, spacing: 20.0) {
                Image(systemName: "apple.logo")
                    .frame(width: 40, height: 40)
                Text(/*@START_MENU_TOKEN@*/"Al Rajhi Capital"/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity)
                Image(systemName: "pencil")
                    .foregroundColor(Color.black)
                    .frame(width: 40, height: 40)
            }
            HStack(alignment: .center, spacing: 20.0) {
                VStack {
                    Text("Stocks")
                        .padding(5)
                    Text("12")
                }
                VStack {
                    Text("Profit/Loss")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(5)
                    HStack {
                        Image(systemName: "arrow.up.square.fill")
                            .foregroundColor(Color.black)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                        Text("13.56%")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
        }
        .padding(.all)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
