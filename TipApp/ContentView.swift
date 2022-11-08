//
//  ContentView.swift
//  TipApp
//
//  Created by Will Frost on 2022/11/08.
//

import SwiftUI

struct ContentView: View {
    @State var total = ""
    @State var tipPercent = 15.0
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "dollarsign.circle.fill")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .font(.title)
                Text("Tip Calculator")
                    .font(.title)
                    .fontWeight(.bold)
                
            }
            
            HStack {
                Text("$")
                TextField("Amount", text: $total)
            }.padding(.horizontal, 150.0)
            
            
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))")
                Text("%")
            }.padding()
            
            if let totalNumber = Double(total) {
                Text ("Tip Amount: $\(totalNumber * tipPercent / 100, specifier: "%0.2f")")
            } else {
                Text("Please enter a number")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
