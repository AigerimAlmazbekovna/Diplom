//
//  CustomTextField.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 05.11.2024.
//

import Foundation
import UIKit
class CustomTextField: UITextField {
    init(holder: String, colorText: String, cornerRadius: CGFloat) {
        super.init(frame: .zero)
         placeholder = holder
         textColor = UIColor(hexRGB: colorText)
         clipsToBounds = true
         layer.cornerRadius = cornerRadius
         textAlignment = .center
         translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
