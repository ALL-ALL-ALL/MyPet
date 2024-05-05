//
//  ContentView.swift
//  MyPet
//
//  Created by  Ixart on 10/04/2024.
//

import SwiftUI
import UIKit

struct ContentView: View {


    
    var body: some View {
        VStack {
            Image(.C_1)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("Hello, world!")
        } // fin vstack
      

        
        
    } // fin body
} // fin struct

#Preview {
    ContentView()
}
