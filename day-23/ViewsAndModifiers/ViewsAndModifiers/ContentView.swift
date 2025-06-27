//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Cleyrol Santana on 26/6/25.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}


struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}


struct ContentView: View {
//    @State private var usePurple = false
    
   
    var body: some View {
        Color.blue
            .frame(width: 300, height: 200)
            .watermarked(with: "Hacking with Swift")
        
        Text("Hello World")
            .titleStyle()
    }
}

#Preview {
    ContentView()
}

//View composition

/*
 Done without the view composition
 struct ContentView: View {
     var body: some View {
         VStack(spacing: 10) {
             Text("First")
                 .font(.largeTitle)
                 .padding()
                 .foregroundStyle(.white)
                 .background(.blue)
                 .clipShape(.capsule)

             Text("Second")
                 .font(.largeTitle)
                 .padding()
                 .foregroundStyle(.white)
                 .background(.blue)
                 .clipShape(.capsule)
         }
     }
 }
 
 
 Done with view composition
 
 struct CapsuleText: View {
     var text: String

     var body: some View {
         Text(text)
             .font(.largeTitle)
             .padding()
             .foregroundStyle(.white)
             .background(.blue)
             .clipShape(.capsule)
     }
 }
 
 struct ContentView: View {
     var body: some View {
         VStack(spacing: 10) {
             CapsuleText(text: "First")
             CapsuleText(text: "Second")
         }
     }
 }
 
 */

//Views as properties
/*
 
 
 let motto1 = Text("Draco Dormiens")
 let motto2 = Text("Nunquam titillandis")
 
 var spells: some View {
     VStack {
         Text("Lumos")
         Text("Obliviate")
     }
 }
 
 var spells2: some View {
     Group {
         Text("Lumos")
         Text("Obliviate")
     }
 }
 
 @ViewBuilder var spells3: some View {
     Text("Lumos")
     Text("Obliviate")
 }
 
 VStack{
     motto1
         .foregroundStyle(.red)
     motto2
         .foregroundStyle(.blue)
 }
 
 
 */

//Enviorement modifier
/*
 
 VStack{
     Text("Hello World")
         .font(.title) //this can be overriten since the text was overriten in the first pplace by the vstack
         .blur(radius: 1) //This cant be overritten, since the blur was applied to the vstack
 }
 .font(.largeTitle)
 .blur(radius: 3.5)
 
 
 */


//Conditional Modifiers
/*
 
 
 Button("Hello World"){
     usePurple.toggle()
 }
 .foregroundStyle(usePurple ? .purple : .red)
 
 */
