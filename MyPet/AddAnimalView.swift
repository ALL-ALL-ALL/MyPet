//
//  AddAnimalView.swift
//  MyPet
//
//  Created by  Ixart on 14/05/2024.
//

import SwiftUI

struct AddAnimalView: View {
    @State private var name = ""
    @State private var image = ""
    @ObservedObject var animalStore: AnimalStore

    
    func addAnimal() {
            let newAnimal = Animal(name: name, image: image, fav: false, star: "star")
            animalStore.animal.append(newAnimal)
        } // fin addanimal
    
    
    
    var body: some View {
        VStack{
            
            Form{
                Section {
                    TextField("Nom de l'animal", text: $name)
                    TextField("Url de l'image", text: $image)
                } header: {
                    Text("ANIMAL IDENTITY")
                    
                } // fin du header
                
                Section {
                    Button("AJOUTEZ"){
                        addAnimal()
                        
                    }
                } // fin section
                .padding(.leading,120)

            } // fin form

            
            
            
            
                
            
        

            
            
            
            
            
        } // fin vstack
        

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    } // fin body
    
} // fin struct


#Preview {
    AddAnimalView(animalStore: AnimalStore())
}










