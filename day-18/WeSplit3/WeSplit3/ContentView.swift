//
//  ContentView.swift
//  WeSplit2
//
//  Created by Cleyrol Santana on 19/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var cost = 0.0
    @State private var amountPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocus:Bool
    
    let tipPercentages = [10,15,20,25,0]
    
    var totalPerPerson: Double{
        let peopleCount = Double(amountPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = cost / 100 * tipSelection
        let grandTotal = cost + tipValue
        let amountPerperson = grandTotal / peopleCount
        
        return amountPerperson
    }
    
    var grandTotal: Double{
        let peopleCount = Double(amountPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = cost / 100 * tipSelection
        let grandTotal = cost + tipValue
        return grandTotal
    }
    
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    TextField("Amount", value: $cost, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocus)
                    
                                        .pickerStyle(.navigationLink)
                }
                
                Section("How much do you want to tip?"){
                    
                    Picker("Tip Percentage", selection: $tipPercentage){
                        ForEach(0..<100){
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.navigationLink)

                }
                
                Section(header: Text("Grand Total")){
                    Text(grandTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                Section(header: Text("Amount per person")){
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }.navigationTitle("WeSplit")
                .toolbar{
                    if amountIsFocus{
                        Button("Done"){
                            amountIsFocus = false
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
