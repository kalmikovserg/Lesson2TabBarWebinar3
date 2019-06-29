//
//  MainViewController.swift
//  Lesson2TabBarWebinar3
//
//  Created by Сергей Калмыков on 6/28/19.
//  Copyright © 2019 Сергей Калмыков. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        Service.showAlert(for: "Hello my friend") { (aler) in
            self.present(aler, animated: true, completion: nil)
        }
    }    
    override func viewDidLayoutSubviews() {
        //        Service.showAlert(for: "You turn phone") { (aler) in
        //            self.present(aler, animated: true, completion: nil)
        //        }
    }
}
