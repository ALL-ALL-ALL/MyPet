//
//  extension.swift
//  MyPet
//
//  Created by  Ixart on 22/05/2024.
//

import Foundation
import UIKit

extension String {
    func toUIImage() -> UIImage? {
        guard let imageData = Data(base64Encoded: self) else { return nil }
        return UIImage(data: imageData)
    }
}
// 
