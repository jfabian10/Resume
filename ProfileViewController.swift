//
//  ProfileViewController.swift
//  ResumeFirst
//
//  Created by CS3714 on 9/28/16.
//  Copyright © 2016 Jesus Fabian. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var dataToPass = [String]()

   
    @IBAction func linkedInButtonTapped(_ sender: UIButton) {
        self.dataToPass = ["LinkedIn Profile", "https://www.linkedin.com"]
        
        performSegue(withIdentifier: "Show Social Media Website", sender: self)
    }
    

    @IBAction func fbButtonTapped(_ sender: UIButton) {
        self.dataToPass = ["Facebook Profile", "https://www.facebook.com"]
        
        performSegue(withIdentifier: "Show Social Media Website", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "Show Social Media Website"{
            
            // Obtain the object reference of the destination view controller
            
            let scWebViewController: ProfileWVViewController = segue.destination as! ProfileWVViewController
            
            // Pass the data object to the destination view controller object
            
            scWebViewController.dataPassed = self.dataToPass
            
        }
    }
    

}
