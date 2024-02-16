//
//  CustomPrimaryButton.swift
//  NeoTour
//
//  Created by Zhasmina Aitmagambetova on 16.02.2024.
//

import UIKit

class CustomPrimaryButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureButton()
    }
    
    private func configureButton() {
        backgroundColor = UIColor(red: 106/255.0, green: 98/255.0, blue: 183/255.0, alpha: 1.0)
        setTitleColor(.white, for: .normal)
        tintColor = .white
    
        titleLabel?.font = UIFont(name: "SF Pro Display", size: 18.0)
        
        contentHorizontalAlignment = .center
        
        configuration?.titlePadding = 10
        configuration?.imagePadding = 10
        configuration?.contentInsets = NSDirectionalEdgeInsets(top: 17, leading: 30, bottom: 17, trailing: 30)

        frame.size.width = 177
        frame.size.height = 53
        
        layer.cornerRadius = frame.size.height / 2.0
        layer.masksToBounds = false
    }
}
