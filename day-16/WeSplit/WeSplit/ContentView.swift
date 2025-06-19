//
//  ContentView.swift
//  WeSplit
//
//  Created by Cleyrol Santana on 18/6/25.
//

//Tells swift we want all the functionality from the swiftUI framework
import SwiftUI

//View is the basic protocol for every kind of data that wants to be drawn in the screen
struct ContentView: View {
    
    //@state lets you make properties in struct to be changed. It is recommended by apple to use private when using @State
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["Maria", "Juan", "Pedro"]
    @State private var selectedStudent = "Maria"

    //view protocol has the requirement of the computed body property to return some view
    var body: some View {
        NavigationStack{
            Form{
                Picker("Select your student", selection: $selectedStudent){
                    ForEach(students, id: \.self){
                        Text($0)
                    }
                }
            }
        }
        
        
        
//        Form{
        //use $ for two variable with two binding data (reads and write)
//            TextField("Please enter your name", text: $name)
//            Text("Hello \(name)")
//        }
        
        
        /*//Creates a button by adding a title and some functionality for the button
        Button("Tap Count \(tapCount)"){
            tapCount += 1
        }
        */
        
        
        
        //Adding a navigation bar
       /* NavigationStack{
            //To get input we can use Form
            Form{
                //Section can group related data
                Section{
                    Text("Hello World")
                    
                }
                Section{
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                }
                
                Text("Hello World")
                //Modifier for the title is directly to what you placed inside of the navigationStack
            }.navigationTitle("Swift UI")
            //We can get a small font by adding another modifier:
                .navigationBarTitleDisplayMode(.inline)
        }*/
    }
}

//preview of the final app that will be launch to the store
#Preview {
    ContentView()
}

//shortcut... option, command, p
//It will do the same as refreshing
