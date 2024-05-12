//
//  addanimalView.swift
//  MyPet
//
//  Created by  Ixart on 13/05/2024.
//

import SwiftUI

struct addanimalView: View {
    @State private var name = ""
    @State private var image = ""

    var body: some View {
        VStack{
            Form{
                Section {
                    TextField("Nom de l'animal", text: $name)
                    TextField("Url de l'image", text: $image)
                } header: {
                    Text("ANIMAL IDENTITY")
                    
                } // fin du header
                
                
                
            } // fin form
                
            
        

            
            
            
            
            
        } // fin vstack

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    } // fin body
} // fin struct

#Preview {
    addanimalView()
}
