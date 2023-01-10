//
//  ContentView.swift
//  State and Binding SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
   @State private var isPlaying = false
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        })
        {
            Image(systemName: isPlaying ?  "stop.circle.fill" : "play.circle.fill")
                .font(.system(size: 150))
                .foregroundColor(isPlaying ? .red : .green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
