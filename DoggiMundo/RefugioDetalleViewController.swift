//
//  RefugioDetalleViewController.swift
//  DoggiMundo
//
//  Created by eyc on 20/05/19.
//  Copyright © 2019 mac.javeloper@gmail.com. All rights reserved.
//

import UIKit

class RefugioDetalleViewController: UIViewController
{
    @IBOutlet weak var WebView: UIWebView!
    @IBOutlet weak var Web: UILabel!
    
    var web: String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.Web.text = web
        let url = URL(string: web)
        WebView.loadRequest(URLRequest(url: url!))
    }
}
