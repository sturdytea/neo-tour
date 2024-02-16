//
//  CustomImageButton.swift
//  NeoTour
//
//  Created by Zhasmina Aitmagambetova on 16.02.2024.
//

import UIKit

class CustomImageButton: CustomPrimaryButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        let arrowImage = UIImage(systemName: "arrow.right")
        let coloredArrowImage = arrowImage?.withTintColor(UIColor.white, renderingMode: .alwaysOriginal)

        setImage(coloredArrowImage, for: .normal)
        
        contentHorizontalAlignment = .left
        semanticContentAttribute = .forceRightToLeft
    }
}
