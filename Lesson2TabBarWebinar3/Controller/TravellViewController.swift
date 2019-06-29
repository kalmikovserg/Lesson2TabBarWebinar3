//
//  TravellViewController.swift
//  Lesson2TabBarWebinar3
//
//  Created by Сергей Калмыков on 6/29/19.
//  Copyright © 2019 Сергей Калмыков. All rights reserved.
//

import UIKit

class TravellViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        Service.showAlert(for: "Отгадайте страну") { (aler) in
            self.present(aler, animated: true, completion: nil)
        }
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return TravellPots.arrayCountries.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "travelCell", for: indexPath) as! TravellViewCell
        
        guard let image = UIImage.init(named: TravellPots.arrayFotoCountry[indexPath.row]) else { return cell }
        cell.imageLabel.image = image
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath) as! TravellViewCell
        guard let counry = cell.textFieldLabel.text else {return}
        
        if counry.lowercased() == TravellPots.arrayCountries[indexPath.item] {
            Service.showAlert(for: "Поздравляю!") { (aler) in
                self.present(aler, animated: true, completion: nil)}
        } else {
            Service.showAlert(for: "не угадали)") { (aler) in
                self.present(aler, animated: true, completion: nil)
            }
        }
    }
}
