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
        VStack {
                   ZStack {
                       RoundedRectangle(cornerRadius: 30)
                           .frame(width: 150, height: 150)
                           .foregroundColor(.yellow)
                           .padding(.top, 80)
                       
                       if let uiImage = animal.image.toUIImage() {
                                          Image(uiImage: uiImage)
                                              .resizable()
                                              .aspectRatio(contentMode: .fit)
                                              .frame(width: 150, height: 150)
                                      } else {
                                         
                                      }
                       
                       
                       
                       Image(animal.image)
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(width: 150, height: 150)
                       
                   } // fin zstack
            
                   .padding()
                   
            
            HStack {
                Text(animal.name)
                           .bold()
                           .foregroundColor(.black)
                Button {
                    
                    animal.fav.toggle()
                    animal.star = animal.fav ? "star.fill" : "star"
                    
                } label: {
                    Image(systemName: animal.star)
                        .foregroundColor(.yellow)
                    
            } // fin label
        } // fin Hstack
            
      } // fin vstack
        
    } // fin body
} // fin struct
#Preview {
    DetailsView(animal: Animal(name: "CERF", image: "cerf", fav: false, star: "star"))
}
