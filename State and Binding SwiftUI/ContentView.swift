//
//  ContentView.swift
//  State and Binding SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
   @State private var Counter = 1 //@state let property Accessed from the View's body (or from function Called by it) // That's why you should State Proprties as Private.
    @State private var paddingSize : CGFloat = 22 // Intial Size for Circle.
    @State private var IncrementPadding = 10 // Increase Circle Size Every time Numbers Increases digit.
    var body: some View {
        Button(action: {
            Counter += 1 // Increment Counter by One For every Tap
            if(Counter == IncrementPadding)
            {
               paddingSize += 10
               IncrementPadding *= 10
            }
        })
        {
                 Text(String(Counter))
                .font(.system(size: 100))
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(paddingSize)// Padding Get Before Background Color control size of circle.
                .background(Color.red)
                .clipShape(Circle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
