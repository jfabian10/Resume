//
//  EducationSchoolWebViewController.swift
//  ResumeFirst
//
//  Created by CS3714 on 9/28/16.
//  Copyright © 2016 Jesus Fabian. All rights reserved.
//

import UIKit

class EducationSchoolWebViewController: UIViewController {

    
    @IBOutlet var schoolNavItem: UINavigationItem!
    
    @IBOutlet var webView: UIWebView!
    
    var dataPassed = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        schoolNavItem.title = dataPassed[0]
        let url = URL(string: dataPassed[1])
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
        
       
    }
    
    
    

}
