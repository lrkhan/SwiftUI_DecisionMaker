//
//  OptionView.swift
//  PickMe
//
//  Created by Luthfor Khan on 3/27/22.
//

import SwiftUI

struct OptionView: View {
    @State var option: AvaliableOptions
    
    var body: some View {
        HStack {
            Spacer()
            
            Text(option.name.uppercased())
                .font(.title2)
                .frame(width: 300, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color(red: Double.random(in: 0...1), green: Double.random(in: 0...1), blue: Double.random(in: 0...1)), lineWidth: 5)
                )
                .padding()
            
            Spacer()
        }
    }
}

struct OptionView_Previews: PreviewProvider {
    static var previews: some View {
        OptionView(option: AvaliableOptions(name: "pizza"))
    }
}
