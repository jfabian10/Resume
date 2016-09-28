//
//  EducationViewController.swift
//  ResumeFirst
//
//  Created by CS3714 on 9/28/16.
//  Copyright © 2016 Jesus Fabian. All rights reserved.
//

import UIKit

class EducationViewController: UIViewController {

   
    
    var dataToPass = [String]()
    
    @IBAction func elemButtonTapped(_ sender: UIButton) {
        
        self.dataToPass = ["Colonial Christian School", "http://www.colonialchristianschool.com/"]
        
        performSegue(withIdentifier: "Show School Website", sender: self)
    }
    
    @IBAction func middleButtonTapped(_ sender: UIButton) {
        self.dataToPass = ["Redland Christian Academy", "http://www.redlandchristianacademy.org/index.html"]
        
        performSegue(withIdentifier: "Show School Website", sender: self)
    }
    
    
    @IBAction func hsButtonTapped(_ sender: UIButton) {
        self.dataToPass = ["Princeton Christian School", "http://www.princetonchristian.org/"]
        
        performSegue(withIdentifier: "Show School Website", sender: self)

    }
    
    
    @IBAction func vtButtonTapped(_ sender: UIButton) {
        self.dataToPass = ["Virginia Tech", "http://www.vt.edu/index.html"]
        
        performSegue(withIdentifier: "Show School Website", sender: self)

    }
    
    
    
    ///perform segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "Show School Website"{
            
            // Obtain the object reference of the destination view controller
            
            let educationSchoolWVController: EducationSchoolWebViewController = segue.destination as! EducationSchoolWebViewController
            
            // Pass the data object to the destination view controller object
            
            educationSchoolWVController.dataPassed = self.dataToPass
            
    }
}
        


}
