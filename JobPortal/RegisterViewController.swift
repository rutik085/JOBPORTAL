//
//  RegisterViewController.swift
//  JobPortal
//
//  Created by Mac on 29/02/24.
//


import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var emailerror: UILabel!
    
    
    @IBOutlet weak var passwordTexfield: UITextField!
    
    @IBOutlet weak var passwordError: UILabel!
    
    
    @IBOutlet weak var registerButton: UIButton!
    
    
    
    
    
var viewModel = loginValidationViewModal()
    override func viewDidLoad() {
        super.viewDidLoad()
 restoreForm()
    }
    func restoreForm(){
        registerButton.isEnabled = false
        emailerror.isHidden = true
        passwordError.isHidden = true
        
    }
    
    
    
    @IBAction func emailtextField(_ sender: Any) {
        if let email = emailTextfield.text{
            if let errorMessage =  viewModel.InvalidUserName(email){
                    emailerror.text = errorMessage
                    emailerror.isHidden = false
                }else{
                    emailerror.isHidden = true
                }
                checkForm()
            }
            
        }
       
        
    
    
    
    @IBAction func passwardTextfield(_ sender: Any) {
        
        
        if let password = passwordTexfield.text{
        if let errorMessage =  viewModel.InvalidPassword(password){
            passwordError.text = errorMessage
            passwordError.isHidden = false
        }else{
            passwordError.isHidden = true
        }
        checkForm()
    }
}

    func checkForm(){
        if emailerror.isHidden && passwordError.isHidden && emailTextfield.text?.isEmpty == false && passwordTexfield.text?.isEmpty == false  {
            registerButton.isEnabled = true
        }else{
            registerButton.isEnabled = false
        }
    }
    
        
    }

