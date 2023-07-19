//
//  ContentView.swift
//  BitwiseCalculator
//
//  Created by Nikita on 18.07.2023.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "plusminus.circle")
                .resizable()
                .frame(width: 120, height: 120, alignment: .center)
            Text("Bitwise Calculator")
                .foregroundColor(.black)
                .bold()
                .fontWidth(.expanded)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
