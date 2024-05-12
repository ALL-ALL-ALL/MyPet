//
//  tableau.swift
//  MyPet
//
//  Created by  Ixart on 17/04/2024.
//

import Foundation
import Combine


class Animal : Identifiable, ObservableObject {
    @Published var id = UUID()
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
        
        Animal(name: "CERF", image: "cerf", fav: false, star: "star"),
        Animal(name: "CHAT", image: "chat", fav: false, star: "star"),
        Animal(name: "CHIEN", image: "chien", fav: false, star: "star"),
        Animal(name: "GRENOUILLE", image: "grenouille", fav: false, star: "star"),
        Animal(name: "LAPIN", image: "lapin", fav: false, star: "star"),
        Animal(name: "LION", image: "lion", fav: false, star: "star"),
        Animal(name: "PANDA", image: "panda", fav: false, star: "star"),
        Animal(name: "SINGE", image: "singe", fav: false, star: "star"),
        Animal(name: "VACHE", image: "vache", fav: false, star: "star"),

   
    ] // fin @Published
    
}
