//
//  ContentView.swift
//  MyPet
//
//  Created by  Ixart on 10/04/2024.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @ObservedObject var animalStore = AnimalStore()

    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 150, maximum: .infinity)),
        GridItem(.flexible(minimum: 150, maximum: .infinity))






    ]

    var body: some View {
            
       
                       
               
        ScrollView {
            LazyVGrid(columns:columns) {
                       ForEach(animalStore.animal) { animal in
                           DetailsView(animal: animal)

                           
                           
                           
                           
                       }
                   }
                   .padding()
            
               } // fin scrollview
           
    
        



            
            
            
            
            
            
            
            
            
      

        
        
    } // fin body
} // fin struct

#Preview {
    ContentView()
}
