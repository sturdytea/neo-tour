//
//  MainViewController.swift
//  NeoTour
//
//  Created by Zhasmina Aitmagambetova on 14.02.2024.
//

import UIKit

class MainViewController: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    override func configureUI() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
}
