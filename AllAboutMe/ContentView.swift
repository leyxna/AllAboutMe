//
//  ContentView.swift
//  AllAboutMe
//
//  Created by Leyna Phan on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showFact = false
    private var funFacts = ["I love traveling!", "I love going to the beach!", "My favorite place to be in is probably Vietnam!"]
    @State private var index = 0
    var body: some View {
        ZStack {
            Color(hue: 0.962, saturation: 0.308, brightness: 1.0)
                .ignoresSafeArea()
            VStack {
                Text("Hi, I'm Leyna!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Image("beachphoto")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(5)
                    .padding()
                    .shadow(radius: 3)
                Button("Click here to learn a fact about me!") {
                    
                    showFact = true
                    index += 1
                }
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.555, green: 0.762, blue: 0.828))
                .cornerRadius(3)
                if showFact == true {
                    Text(funFacts[index % funFacts.count])
                        .font(.headline)
                        .foregroundColor(Color.white)
                }
            
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
