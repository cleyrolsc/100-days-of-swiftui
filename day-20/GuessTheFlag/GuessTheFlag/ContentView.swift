//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Cleyrol Santana on 22/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false

    
    var body: some View {
        
        Button("Show Alert"){
            showAlert = true
        }
        .alert("Important message", isPresented: $showAlert) {
            Button("Cancel", role: .cancel){}
            Button("Delete", role: .destructive){}
        } message: {
            Text("Pleae read this important message")
        }
       
    }
}

#Preview {
    ContentView()
}

/*
 
 Images and buttons
 
 Button{
     print("Button was pressed")
 } label: {
     Label("Tap Me", systemImage: "pencil")
 }
     .foregroundStyle(.white)
     .frame(width: 200, height: 200)
     .background(.red)
 
 Image(systemName: "pencil")
     .foregroundStyle(.red)
     .font(.largeTitle)
 
 Buttons
 
 Button(){
     print("Button was pressed")
 } label: {
     Text("Tap Me")
         .padding()
         .foregroundStyle(.white)
         .background(.red)
 }
 
 
 Button("Button 1"){}
     .buttonStyle(.bordered)
 
 Button("Button 2", role: .destructive){}
     .buttonStyle(.bordered)
 
 Button("Button 3"){}
     .buttonStyle(.borderedProminent)
     .tint(.indigo)
 
 Button("Button 4", role: .destructive){}
     .buttonStyle(.borderedProminent)
 
 */

/*
 Gradients
 SwiftUI gives us four kinds of gradients to work with, and like colors most of them are also views that can be drawn in our UI.

 Gradients are made up of several components:

 An array of colors to show
 Size and direction information
 The type of gradient to use
 
 //AngularGradient(colors: [.red,.blue,.indigo,.red], center: .center, angle: .degrees(2.5))
 
 //        LinearGradient(colors: [.blue, .red, .yellow], startPoint: .top, endPoint: .bottom)
 //            .ignoresSafeArea()
 //            .frame(maxWidth: .infinity, maxHeight: .infinity)
         
 //        Text("Your Content")
 //            .frame(maxWidth: .infinity, maxHeight: .infinity)
 //            .foregroundStyle(.white)
 //            .background(.indigo.gradient)
 
 
 */


/*
 Colors and Frames
 //Zstack automatically fill its content.
 //If you want the red to be in the whole area. Then we need to treat the read as its own view
 ZStack{
     VStack(spacing:0){
         Color.red
         Color.blue
     }
     Text("Your content")
         .foregroundStyle(.secondary)
         .padding(50)
         .background(.ultraThinMaterial)
 }
 .ignoresSafeArea()
 
 */

/*
 //Practice, 3x3 grid
 
 //use vstack, hstack or zstack to return multiple views in an specific alingment
 VStack(spacing:20){
     HStack{
         Text("A")
         Text("B")
         Text("C")
     }
     HStack{
         Text("1")
         Text("2")
         Text("3")
     }
     HStack{
         Text("D")
         Text("E")
         Text("F")
     }
 }
 
 
 
 */
