//
//  CustomLabel.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 05.11.2024.
//

import Foundation
import UIKit
class CustomLabel: UILabel {
    let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
    init(text: String, Fontname: String, Fontsize: CGFloat, UIColorhexRGB: String, lineHeightMultiple: CGFloat, kern: Double) {
        super.init(frame: .zero)
        textColor = UIColor(hexRGB: UIColorhexRGB)
        font = UIFont(name: Fontname, size: Fontsize)
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        attributedText = NSAttributedString(string: text, attributes: [NSAttributedString.Key.paragraphStyle : paragraphStyle, NSAttributedString.Key.kern: kern])
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
