//
//  MyPetApp.swift
//  MyPet
//
//  Created by  Ixart on 10/04/2024.
//

import SwiftUI

@main
struct MyPetApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(animalStore: AnimalStore())
        }
    }
}
