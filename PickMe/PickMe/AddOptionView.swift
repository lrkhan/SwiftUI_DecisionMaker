//
//  AddOptionView.swift
//  PickMe
//
//  Created by Luthfor Khan on 3/27/22.
//

import SwiftUI

struct AddOptionView: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var arrayOfOptions: [AvaliableOptions]
    
    var quote:Quotes = quotes.randomElement() ?? Quotes(Message: "Error, It's me not you")
    
    @State private var optionText = ""
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    
                    Spacer()
                    
                    Group {
                        Text(quote.Message)
                            .padding([.top, .leading, .trailing])
                            .frame(width: 350, height: 100)
                        Text("- \(quote.Person)")
                    }
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        TextField(arrayOfOptions.isEmpty ? "Start with an Option 1" : "Enter Option \(arrayOfOptions.count + 1)", text: $optionText)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: geo.size.width * 0.9, height: geo.size.height * 0.1)
                            .foregroundColor(.black)
                            .background(Color(red: 0.827, green: 0.827, blue: 0.827))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Spacer()
                    }
                    
                    Spacer()
                    
                    Button(action:{
                        if !optionText.isEmpty{
                            arrayOfOptions.append(AvaliableOptions(name: optionText))
                            
                            optionText = ""
                        }
                    }) {
                        Text("Add")
                            .font(.largeTitle)
                            .frame(width: geo.size.width * 0.40, height: geo.size.height * 0.1)
                            .foregroundColor(.white)
                            .background(.green)
                            .clipShape(Capsule())
                    }
                    
                    Group{
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                }
            }
            .navigationTitle("Add An Option")
            .navigationBarItems(trailing:
                                    Button(action: {
                dismiss()
            }){
                Text("Done")
                    .bold()
                    .foregroundColor(.red)
            })
        }
    }
}

struct AddOptionView_Previews: PreviewProvider {
    @State var temp: [AvaliableOptions] = [AvaliableOptions(name: "boom"), AvaliableOptions(name: "bap"), AvaliableOptions(name: "tep")]
    
    static var previews: some View {
        AddOptionView(arrayOfOptions: .constant([AvaliableOptions(name: "boom"), AvaliableOptions(name: "bap"), AvaliableOptions(name: "tep")]))
    }
}
