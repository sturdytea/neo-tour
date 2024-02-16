//
//  CollectionTableViewCell.swift
//  NeoTour
//
//  Created by Zhasmina Aitmagambetova on 15.02.2024.
//

import UIKit

class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    static let identifier = "CollectionTableViewCell"
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    static func nib() -> UINib {
        return UINib(nibName: "CollectionTableViewCell", bundle: nil)
    }
    
    func configure(with places: [Place]) {
        self.places = places
        collectionView.reloadData()
    }
    
    @IBOutlet var collectionView: UICollectionView!
    
    var places = [Place]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(PlacesCollectionViewCell.nib(), forCellWithReuseIdentifier: PlacesCollectionViewCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // CollectionView
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return places.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PlacesCollectionViewCell.identifier, for: indexPath) as! PlacesCollectionViewCell
        
        cell.configure(with: places[indexPath.row])
        cell.placeImageButton.tag = indexPath.row
        cell.placeImageButton.addTarget(self, action: #selector(placeDetails), for: .touchUpInside)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 335, height: 254)
    }
    
    @objc func placeDetails(sender: UIButton) {
        let indexPath = IndexPath(row: sender.tag, section: 0)
        let place = self.storyboard.instantiateViewController(withIdentifier: "placeVC") as! PlaceViewController
        
        place.selectedPlace = places[indexPath.row]
        self.window?.rootViewController?.show(place, sender: self)
    }
}
