//
//  Extension+UIImage.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 05.11.2024.
//

import Foundation
import UIKit

extension UIImageView {
  func setImageColor(color: UIColor) {
    let templateImage = self.image?.withRenderingMode(.alwaysTemplate)
    self.image = templateImage
    self.tintColor = color
  }
    
}
