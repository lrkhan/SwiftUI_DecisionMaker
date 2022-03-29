//
//  ContentView.swift
//  PickMe
//
//  Created by Luthfor Khan on 3/27/22.
//

import SwiftUI

struct ContentView: View {
    @State private var userOptions: [AvaliableOptions] = []
    @State private var alertToggle = false
    @State private var showAddSheet = false
    
    @State private var mesg: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                if userOptions.isEmpty {
                    Text("Add Options")
                        .bold()
                } else {
                    List {
                        ForEach(userOptions, id: \.id){ opt in
                            OptionView(option: opt)
                        }
                        .onDelete(perform: delete)
                    }
                    //.listRowBackground(Color.white)
                }
                
                Spacer()
                
                HStack {
                    Button(action:{
                        showAddSheet.toggle()
                    }){
                        Image(systemName: "plus.circle")
                            .padding()
                            .font(.system(size: 80))
                    }
                    Button(action:{
                        mesg = userOptions.randomElement()?.name ?? "No options avaliable"
                        alertToggle.toggle()
                    }){
                        Image(systemName: "dice")
                            .padding()
                            .font(.system(size: 80))
                    }
                }
            }
            .sheet(isPresented: $showAddSheet) { AddOptionView(arrayOfOptions: $userOptions)
            }
            
            .navigationTitle("PickMe")
            .alert("\(mesg)", isPresented: $alertToggle) {
                        Button("OK", role: .cancel) { }
                    }
        }
    }
    
    func delete(at offsets: IndexSet) {
        userOptions.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
