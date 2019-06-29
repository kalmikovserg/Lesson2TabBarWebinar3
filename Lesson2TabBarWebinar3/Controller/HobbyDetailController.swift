//
//  HobbyDetailController.swift
//  Lesson2TabBarWebinar3
//
//  Created by Сергей Калмыков on 6/28/19.
//  Copyright © 2019 Сергей Калмыков. All rights reserved.
//

import UIKit
import WebKit

class HobbyDetailController: UIViewController, WKNavigationDelegate {
    
    var webViewC: WKWebView!
    var url: String!
    
    var image: UIImage!
    var detail: String!
    
    @IBOutlet var detailLaber: UILabel!
    @IBOutlet var imageLabel: UIImageView!
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageLabel.image = image
        detailLaber.text = detail
       
        webView.navigationDelegate = self

        guard let urlCor = URL(string: url)  else { return }
        let request = URLRequest(url: urlCor )
        webView.load(request)
        webView.allowsBackForwardNavigationGestures = true
    }
    
    @IBAction func exitAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

