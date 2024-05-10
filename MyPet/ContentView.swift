//
//  ContentView.swift
//  MyPet
//
//  Created by  Ixart on 10/04/2024.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @ObservedObject var animalStore = AnimalStore()  // Tableau 
    
    @State private var search = "" // barre de recheche


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
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 30)
                                        .frame(width: 150, height: 150)
                                        .foregroundColor(.yellow)
                                        .padding(.top,80)
                                    
                                    Image(animal.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 190, height: 190)
                                    
                                } // fin zstack
                                .padding()

                                HStack {
                                    Text(animal.name)
                                           .bold()
                                           .foregroundColor(.black)
                                    
                                    Button {
                                        animal.favoris.toggle()
                                        animal.star = animal.favoris ? "star.fill" : "star"
                                        
                                    } label: {
                                       
                                        Image(systemName: animal.star)
                                            .foregroundColor(.yellow)

                                        
                                    } // fin label
                                   
                                } // fin Hstack

                                
                               
                            } // fin vstack
                            
                            
                            
                            
       
                         } // fin label avec le code a linterieur de ce que lon voit
                        
                        
                        
                    } // fin For Each
                } // fin Lazygrid
                .padding()
                
            } // fin scrollview
            .navigationTitle("Animals")
            
        } // fin navigationStack
        .searchable(text: $search)

            
           
     // NE PAS OUBLIER DE METTRE LE FILTRE
        // NE PAS OUBLIER DE METTRE FAVORIS 
        



            
            
            
            
            
            
            
            
            
      

        
        
    } // fin body
} // fin struct

#Preview {
    ContentView()
}
