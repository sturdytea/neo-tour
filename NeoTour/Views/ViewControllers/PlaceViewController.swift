//
//  PlaceViewController.swift
//  NeoTour
//
//  Created by Zhasmina Aitmagambetova on 15.02.2024.
//

import UIKit

class PlaceViewController: UIViewController {
    
    @IBOutlet var placeImageView: UIImageView!
    @IBOutlet var placeName: UILabel!
    @IBOutlet var backLabel: UILabel!
    @IBOutlet var placeVenue: UILabel!
    @IBOutlet var placeDesc: UILabel!
    
    var selectedPlace = Place(name: "Fuji Demo", imageName: "mount-fuji")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        placeImageView.image = UIImage(named: selectedPlace.imageName)
        placeName.text = selectedPlace.name
    }
    
    private func configureUI() {
        backLabel.layer.cornerRadius = backLabel.frame.size.height / 2.0
        backLabel.layer.masksToBounds = true

    }
}
