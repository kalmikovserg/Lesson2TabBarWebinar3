//
//  HobbyViewController.swift
//  Lesson2TabBarWebinar3
//
//  Created by Сергей Калмыков on 6/28/19.
//  Copyright © 2019 Сергей Калмыков. All rights reserved.
//

import UIKit

class HobbyViewController: UITableViewController {
    
    private var currentIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Service.showAlert(for: "it is my favorites, perhaps yours too ") { (aler) in
            self.present(aler, animated: true, completion: nil)
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return HobbyPots.arrayHobby.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hobbyCell", for: indexPath) as! HobbyViewCell
        cell.hobblyLabel.text = HobbyPots.arrayHobby[indexPath.row]
        cell.descriptionLabel.text = HobbyPots.arrayDesriptionHobby[indexPath.row]
        
        guard let image = UIImage.init(named: HobbyPots.arrayFotoHobby[indexPath.row]) else { return cell }
        cell.imageLabel.image = image
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "deteilSegue" {
            if let indexPath = tableView.indexPathForSelectedRow{
                let detailHobbyController = segue.destination as! HobbyDetailController
                guard let image = UIImage.init(named: HobbyPots.arrayFotoHobby[indexPath.row]) else { return }
                detailHobbyController.image = image
                detailHobbyController.detail = HobbyPots.arrayHobby[indexPath.row]
                detailHobbyController.url = HobbyPots.arrayDesriptionHobby[indexPath.row]
            }
        }
    }
}
