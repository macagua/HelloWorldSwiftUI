//
//  ContentView.swift
//  HelloWorld
//
//  Created by Leonardo J. Caballero G. on 2/1/25.
//

import SwiftUI

struct ContentView: View {

    @State var name: String = ""

    var body: some View {
        VStack {
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            TextField("Enter your name", text: $name)
                .padding(/*@START_MENU_TOKEN@*/.all/*@START_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.pink/*@START_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@START_MENU_TOKEN@*/)
                .padding(/*@START_MENU_TOKEN@*/.all/*@START_MENU_TOKEN@*/)
            Text(name.isEmpty ? "Hello, world!" : "Hello, \(name)!")
        }
        .padding()
        Button("Reset") {
            name = ""
        }
    }
}

struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
