//
//  ChooseProfileViewController.swift
//  JobPortal
//
//  Created by Mac on 29/02/24.
//


import UIKit

class ChooseProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recruiterBtin(_ sender: Any) {
        
        let nav = self.storyboard?.instantiateViewController(withIdentifier: "RecruiterProfileViewController")as! RecruiterProfileViewController
        self.navigationController?.pushViewController(nav, animated: true)
    }
    
    
    @IBAction func studentBtn(_ sender: Any) {
        let nav = self.storyboard?.instantiateViewController(withIdentifier: "StudentProfileViewController")as! StudentProfileViewController
        self.navigationController?.pushViewController(nav, animated: true)
    }
    

}
