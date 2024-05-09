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
    @State private var search = ""


    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 150, maximum: .infinity)),
        GridItem(.flexible(minimum: 150, maximum: .infinity))
    ]

    var body: some View {
        
        NavigationStack{
            ScrollView {
                
                LazyVGrid(columns:columns) {
                    ForEach(animalStore.animal) { animal in
                        NavigationLink(destination: DetailsView(animal: animal)) {
                            
                            
                            
                            
                            
                            DetailsView(animal: animal)
                        }
                        
                    } // fin For Each
                } // fin Lazygrid
                .padding()
                
            } // fin scrollview
            .navigationTitle("Animals")
            
        } // fin navigationStack
        .searchable(text: $search)

            
           
    
        



            
            
            
            
            
            
            
            
            
      

        
        
    } // fin body
} // fin struct

#Preview {
    ContentView()
}
