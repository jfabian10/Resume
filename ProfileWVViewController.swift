//
//  ProfileWVViewController.swift
//  ResumeFirst
//
//  Created by CS3714 on 9/28/16.
//  Copyright © 2016 Jesus Fabian. All rights reserved.
//

import UIKit

class ProfileWVViewController: UIViewController {

    
    @IBOutlet var webNameNavItem: UINavigationItem!
    
    
    @IBOutlet var webView: UIWebView!
    
    
    var dataPassed = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webNameNavItem.title = dataPassed[0]
        let url = URL(string: dataPassed[1])
        let request = URLRequest(url: url!)
        webView.loadRequest(request) 
        
        
    }
    
    

}
