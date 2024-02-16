//
//  PlacesCollectionViewCell.swift
//  NeoTour
//
//  Created by Zhasmina Aitmagambetova on 15.02.2024.
//

import UIKit

class PlacesCollectionViewCell: UICollectionViewCell {

    @IBOutlet var placeLabel: UILabel!
    @IBOutlet var placeImageButton: UIButton!
    
    static let identifier = "PlacesCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "PlacesCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with place: Place) {
        self.placeLabel.text = place.name
        self.placeImageButton.setImage(UIImage(named: place.imageName), for: .normal)
        self.layer.cornerRadius = 30
        self.layer.masksToBounds = true
    }
    
    
}
