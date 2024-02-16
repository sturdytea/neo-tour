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
        configureDescription()
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

