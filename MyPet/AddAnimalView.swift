//
//  AddAnimalView.swift
//  MyPet
//
//  Created by  Ixart on 14/05/2024.
//

import SwiftUI
import PhotosUI


struct AddAnimalView: View {
    @State private var name = ""
    @State private var image = ""
    
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImageData: Data? = nil
    
    
    func addAnimal() {
            guard let imageData = selectedImageData,
                  let uiImage = UIImage(data: imageData),
                  let imageBase64 = uiImage.jpegData(compressionQuality: 1.0)?.base64EncodedString() else {
                return
            }
            let newAnimal = Animal(name: name, image:imageBase64, fav: false, star: "star")
            animalStore.animal.append(newAnimal)
        }
    
    // rajouter
    
    
    
    
    @ObservedObject var animalStore: AnimalStore

    
    
    
    
    
    var body: some View {
        VStack{
            
            Form{
                Section {
                    TextField("Nom de l'animal", text: $name)
                        .keyboardType(.alphabet)
                    
                    if let selectedImageData,
                                          let uiImage = UIImage(data: selectedImageData) {
                                           Image(uiImage: uiImage)
                                               .resizable()
                                               .scaledToFit()
                                               .frame(width: 150, height: 150)
                                       }

                                       PhotosPicker(
                                           selection: $selectedItem,
                                           matching: .images,
                                           photoLibrary: .shared()) {
                                               Text("Choisir une image")
                                           }
                                           .onChange(of: selectedItem) { newItem in
                                               Task {
                                                   if let data = try? await newItem?.loadTransferable(type: Data.self) {
                                                       selectedImageData = data
                                                   }
                                               }
                                           }
                    
                    
                    
                    
                    
                
                    
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
@available(iOS 16.0, *)



#Preview {
    AddAnimalView(animalStore: AnimalStore())
}










