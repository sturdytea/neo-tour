//
//  ViewController.swift
//  NeoTour
//
//  Created by Zhasmina Aitmagambetova on 14.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    @IBOutlet var desc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        configureButton()
        configureDescription()
    }
    
    func configureButton() {
        button.backgroundColor = UIColor(red: 106/255.0, green: 98/255.0, blue: 183/255.0, alpha: 1.0)
        button.setTitleColor(.white, for: .normal)
        
        button.setTitle("Let's Go!", for: .normal)
        button.titleLabel?.font = UIFont(name: "SF Pro Display", size: 16.0)
        let arrowImage = UIImage(systemName: "arrow.right")
        
        let coloredArrowImage = arrowImage?.withTintColor(UIColor.white, renderingMode: .alwaysOriginal)

        button.setImage(coloredArrowImage, for: .normal)
        
        button.semanticContentAttribute = .forceRightToLeft
        
        button.contentHorizontalAlignment = .left
        
        button.configuration?.titlePadding = 10
        button.configuration?.imagePadding = 10
        button.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 17, leading: 30, bottom: 17, trailing: 30)

        button.frame.size.width = 177
        button.frame.size.height = 53
        
        button.layer.cornerRadius = button.frame.size.height / 2.0
        button.layer.masksToBounds = false
    }
    
    func configureDescription() {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10
        
        let descText = "Enjoy your winter vacations with warmth \nand amazing sightseeing on the mountains.\nEnjoy the best experience with us!"

        let attributedString = NSAttributedString(string: descText, attributes: [
                    NSAttributedString.Key.paragraphStyle: paragraphStyle
        ])
        
        desc.attributedText = attributedString
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        if let mainVC = storyboard?.instantiateViewController(withIdentifier: "mainVC") {
            navigationController?.pushViewController(mainVC, animated: true)
        }
    }
}

