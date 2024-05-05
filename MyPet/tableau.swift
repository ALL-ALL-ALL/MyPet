//
//  tableau.swift
//  MyPet
//
//  Created by  Ixart on 17/04/2024.
//

import Foundation
import Combine


class Animal : Identifiable, ObservableObject {
               var id = UUID()
    @Published var name : String
    @Published var image : String
    @Published var favoris : Bool
    @Published var star : String
    
    init(name: String, image: String, fav : Bool, star : String) {
        self.name = name
        self.image = image
        self.favoris = fav
        self.star = star
        
    } // fin INIT
} // fin class Animal

class AnimalStore: ObservableObject {
    @Published var animal: [Animal] = [
        
        Animal(name: "CERF", image: "C 1", fav: false, star: "star"),
        Animal(name: "CHAT", image: "C 2", fav: false, star: "star"),
        Animal(name: "CHIEN", image: "C 3", fav: false, star: "star"),
        Animal(name: "GRENOUILLE", image: "G", fav: false, star: "star"),
        Animal(name: "LAPIN", image: "L 1", fav: false, star: "star"),
        Animal(name: "LION", image: "L", fav: false, star: "star"),
        Animal(name: "PANDA", image: "P", fav: false, star: "star"),
        Animal(name: "SINGE", image: "S", fav: false, star: "star"),
        Animal(name: "VACHE", image: "V", fav: false, star: "star")

   
    ] // fin @Published
} // fin class Animal


//Animal(image: "C 1", name: "CERF"),
//Animal(image: "C 2", name: "CHAT"),

//Animal(image: "C 3", name: "CHIEN"),
//Animal(image: "G", name: "GRENOUILLE"),
//Animal(image: "L 1", name: "LAPIN"),

//Animal(image: "L", name: "LION"),
//Animal(image: "P", name: "PANDA"),
//Animal(image: "S", name: "SINGE"),
//Animal(image: "V", name: "VACHE")



