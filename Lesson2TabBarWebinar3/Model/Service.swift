//
//  Service.swift
//  Lesson2TabBarWebinar3
//
//  Created by Сергей Калмыков on 6/28/19.
//  Copyright © 2019 Сергей Калмыков. All rights reserved.
//

import UIKit

class Service {
    
    static func showAlert(for textMessage: String,visible: @escaping (_ alert: UIAlertController) -> Void)  {
        
        let alert = UIAlertController(title: "Siri ->", message: textMessage, preferredStyle: .alert)
        let button = UIAlertAction(title: "Done", style: .default, handler: nil)
        alert.addAction(button)
        visible(alert)
    }
}
