//
//  LoginViewController.swift
//  JobPortal
//
//  Created by Mac on 29/02/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var UsernameTextField: UITextField!
    
    @IBOutlet weak var usernameErrorLabel: UILabel!
    
    @IBOutlet weak var passwordTextField: UITextField!
        
    @IBOutlet weak var passwordError: UILabel!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    var viewModal = loginValidationViewModal()
    override func viewDidLoad() {
        super.viewDidLoad()
restoreForm1()
        // Do any additional setup after loading the view.
    }
    
    func restoreForm1(){
        loginBtn.isEnabled = false
        usernameErrorLabel.isHidden = true
        passwordError.isHidden = true
        
    }
    
    @IBAction func usernameTexfieldA(_ sender: Any) {
        if let Username = UsernameTextField.text{
            if let errorMessage =  viewModal.InvalidUserName(Username){
                    usernameErrorLabel.text = errorMessage
                    usernameErrorLabel.isHidden = false
                }else{
                    usernameErrorLabel.isHidden = true
                }
                checkForm()
            }
            
        }
       
    @IBAction func passwordTextfield(_ sender: Any) {
        if let password = passwordTextField.text{
        if let errorMessage =  viewModal.InvalidPassword(password){
            passwordError.text = errorMessage
            passwordError.isHidden = false
        }else{
            passwordError.isHidden = true
        }
        checkForm()
    }
}

    func checkForm(){
        if usernameErrorLabel.isHidden && passwordError.isHidden && UsernameTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false  {
            loginBtn.isEnabled = true
        }else{
            loginBtn.isEnabled = false
        }
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
        let nav = self.storyboard?.instantiateViewController(withIdentifier: "ChooseProfileViewController")as! ChooseProfileViewController
        self.navigationController?.pushViewController(nav, animated: true)
    }
    
    @IBAction func registerButton(_ sender: Any) {
        
        let nav = self.storyboard?.instantiateViewController(withIdentifier:"RegisterViewController")as! RegisterViewController
        self.navigationController?.pushViewController(nav, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
