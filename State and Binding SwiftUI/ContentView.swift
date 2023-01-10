//
//  ContentView.swift
//  State and Binding SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
   @State private var Counter = 1 //@state let property Accessed from the View's body (or from function Called by it) // That's why you should State Proprties as Private.
    var body: some View {
        CounterButton(Counter: $Counter)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CounterButton : View {
    @Binding var Counter : Int
    var body: some View {
        Button(action: {
            Counter += 1 // Increment Counter by One For every Tap
        })
        {
            Circle()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.red)
                .overlay(
                Text("\(Counter)")
                    .font(.system(size: 100, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                )
        }
    }
}
