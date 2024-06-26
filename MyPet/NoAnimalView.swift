//
//  NoAnimalView.swift
//  MyPet
//
//  Created by  Ixart on 14/05/2024.
//

import SwiftUI

struct NoAnimalView: View {
    @ObservedObject var animalStore: AnimalStore


    
    @State private var AddingAnimal = false

    
    var body: some View {
        VStack{
               
                
                Image(.sorry)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                
            
            
            Text("Pas d'animaux")
                .bold()
                .font(.title2)
            
            Text("Ajoutez des animaux à votre collection")
                .italic()
                .foregroundColor(.gray)
            
                .padding()
            
            
            
            
            
            
            ZStack{
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
                
                
                
                Button(action: {
                    AddingAnimal = true
                }, label: {
                    Image(systemName: "plus")
                        .sheet(isPresented: $AddingAnimal) {
                            AddAnimalView(animalStore: animalStore)

                            
                                        } // fin de .sheet
                    
                }) // fin de label
                
                
            } // fin Zstack
            
            
            
            
            
            
            
            
        } // fin vstack

        
        
        
        
        
        
        
    } // fin body
} // fin struct


#Preview {
    NoAnimalView(animalStore: AnimalStore())
}


