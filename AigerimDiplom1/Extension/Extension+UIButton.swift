//
//  Extension+UIButton.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 05.11.2024.
//

import Foundation
import UIKit
extension UIButton {
    func alignImageAndTitleVertically(padding: CGFloat = 6.0) {
            let imageSize = self.imageView!.frame.size
            let titleSize = self.titleLabel!.frame.size
            let totalHeight = imageSize.height + titleSize.height + padding

            self.imageEdgeInsets = UIEdgeInsets(
                top: -(totalHeight - imageSize.height),
                left: (self.frame.size.width - imageSize.width) / 2,
                bottom: 0,
                right: 0 //-titleSize.width
            )

            self.titleEdgeInsets = UIEdgeInsets(
                top: 0,
                left: -imageSize.width,
                bottom: -(totalHeight - titleSize.height),
                right: 0
            )
        }
}
