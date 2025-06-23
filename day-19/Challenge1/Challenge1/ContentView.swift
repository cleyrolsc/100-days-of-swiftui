//
//  ContentView.swift
//  Challenge1
//
//  Created by Cleyrol Santana on 21/6/25.
//

import SwiftUI


struct ContentView: View {

    @State private var outputSelectedTemp: String = "Celcius"
    @State private var inputSelectedTemp: String = "Celcius"
    let temperatureList = ["Celcius", "Fahrenheit", "Kelvin"]

    @FocusState private var numberIsFocus: Bool
    @State private var temperature: Double = 0.0

    
    var convertedTemperature: Double {
        var tempInCelsius: Double = 0.0

        switch inputSelectedTemp {
        case "Celcius":
            tempInCelsius = temperature
        case "Fahrenheit":
            tempInCelsius = (temperature - 32) * 5 / 9
        case "Kelvin":
            tempInCelsius = temperature - 273.15
        default:
            tempInCelsius = temperature
        }

        switch outputSelectedTemp {
        case "Celcius":
            return tempInCelsius
        case "Fahrenheit":
            return (tempInCelsius * 9 / 5) + 32
        case "Kelvin":
            return tempInCelsius + 273.15
        default:
            return tempInCelsius
        }
    }

    var body: some View {
        NavigationStack {
            Form {
                Section("Input Unit:") {
                    Picker("Select input unit", selection: $inputSelectedTemp) {
                        ForEach(temperatureList, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }

                Section("Output Unit:") {
                    Picker("Select output unit", selection: $outputSelectedTemp) {
                        ForEach(temperatureList, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }

                Section("Enter Temperature:") {
                  
                    TextField("Temperature", value: $temperature, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($numberIsFocus)
                }

                Section("Converted Temperature:") {
                   
                    Text(convertedTemperature, format: .number.precision(.fractionLength(2)))
                }
            }
            .navigationTitle("Temperature Converter") 
            .toolbar {
                if numberIsFocus {
                    Button("Done") {
                        numberIsFocus = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
