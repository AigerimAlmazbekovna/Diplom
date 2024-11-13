//
//  CustomStackView.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 05.11.2024.
//

import Foundation
import UIKit
class CustomStackView: UIStackView {
    init(space: CGFloat, axis: NSLayoutConstraint.Axis, distribution: UIStackView.Distribution, alignment: UIStackView.Alignment) {
        super.init(frame: .zero)
        self.alignment = alignment
        self.spacing = space
        self.axis = axis
        self.distribution = distribution
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
