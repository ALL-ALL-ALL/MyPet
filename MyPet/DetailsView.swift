//
//  DetailsView.swift
//  MyPet
//
//  Created by  Ixart on 19/04/2024.
//

import SwiftUI

struct DetailsView: View {
    @ObservedObject var animal : Animal

    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 250, height: 250)
                .foregroundColor(.yellow)
                .padding(.top,130)
            
            Image(.C_3)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 280, height: 330)
            
        } // fin zstack
        HStack{
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

            
            
            
            
            
            
        } // fin hstack
        
        
    
        
        
        
        
    } // fin body
} // fin struct

#Preview {
    DetailsView(animal: Animal(name: "CERF", image: "C 1", fav: false, star: "star"))
}
