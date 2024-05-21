//
//  ContentView.swift
//  MyPet
//
//  Created by  Ixart on 10/04/2024.
//

import SwiftUI
import UIKit


struct ContentView: View {

 
    @ObservedObject var animalStore: AnimalStore

    
    @State private var search = "" // barre de recheche


    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 150, maximum: .infinity)),
        GridItem(.flexible(minimum: 150, maximum: .infinity))
    ]
    
    var filteredAnimals: [Animal] {
            if search.isEmpty {
                return animalStore.animal
            } else {
                return animalStore.animal.filter { animal in
                    animal.name.lowercased().contains(search.lowercased())
                } // fin filtre recherche dans animal
            } // fin de sinon
        } // fin filtreanimal

    var body: some View {
        
        NavigationStack{
            ScrollView {
                LazyVGrid(columns:columns) {
                    ForEach(filteredAnimals) { animal in
                        NavigationLink(destination: DetailsView(animal: animal)) {
                            DetailsView(animal: animal)
       
                         } // fin label avec le code a linterieur de ce que lon voit
                    } // fin For Each
                    
                    if filteredAnimals.isEmpty {
                        NavigationLink(destination: AddAnimalView(animalStore: animalStore)) {
                            
                            Button {


                            } label: {
                                NoAnimalView(animalStore: animalStore)
                                    .padding(.trailing,-100)
                            } // fin label

                                            } // fin navigationlink
                        
                                        } // fin if
                                    } // fin lazygrid
                } // fin scrollview
                .padding()
                .navigationTitle("Animals")
            } // fin navigation stack
            .searchable(text: $search)
    } // fin body
} // fin struct

#Preview {
    ContentView(animalStore: AnimalStore())
}
























//VStack{
//    ZStack{
//        RoundedRectangle(cornerRadius: 30)
//            .frame(width: 150, height: 150)
//            .foregroundColor(.yellow)
//            .padding(.top,80)
//        
//        Image(animal.image)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 190, height: 190)
//        
//    } // fin zstack
//    .padding()
//
//    HStack {
//        Text(animal.name)
//               .bold()
//               .foregroundColor(.black)
//        
//        Button {
//            animal.favoris.toggle()
//            animal.star = animal.favoris ? "star.fill" : "star"
//            
//        } label: {
//           
//            Image(systemName: animal.star)
//                .foregroundColor(.yellow)
//
//            
//        } // fin label
//       
//    } // fin Hstack
//
//    
//   
//} // fin vstack
