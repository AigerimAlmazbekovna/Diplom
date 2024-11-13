//
//  MenuViewCell.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 05.11.2024.
//

import UIKit

import UIKit

class MenuViewCell: UICollectionViewCell {
    static var identifier = "MenuViewCell"
    
    public lazy var titleLabel: CustomLabel = {
        let label = CustomLabel(text: "Новости", Fontname: FontTextType.regular.rawValue, Fontsize: 14, UIColorhexRGB: ColorType.LabelTextColor.textBlackColor.rawValue, lineHeightMultiple: 1.18, kern: -0.17)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    private func setupView() {
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: (titleLabel.text?.getHeight() ?? 0) + 10),
            titleLabel.widthAnchor.constraint(equalToConstant: (titleLabel.text?.getWidth() ?? 0) + 10),
        ])
    }

    public func setupCell(item: String) {
        self.titleLabel.text = item
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
