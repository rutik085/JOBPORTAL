//
//  RecruiterProfileViewController.swift
//  JobPortal
//
//  Created by Mac on 29/02/24.
//
import UIKit

class RecruiterProfileViewController: UIViewController {

    
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var nameerror: UILabel!
    @IBOutlet weak var comapanyNameTextfield: UITextField!
    @IBOutlet weak var comapanyNameError: UILabel!
    @IBOutlet weak var companySizeTextfield: UITextField!
    @IBOutlet weak var sizeError: UILabel!
    @IBOutlet weak var ComapanyDescriptionTextField: UITextField!
    @IBOutlet weak var descriptionError: UILabel!
    @IBOutlet weak var contactTextField: UITextField!
    @IBOutlet weak var contactError: UILabel!
    @IBOutlet weak var emailIDTextfield: UITextField!
    @IBOutlet weak var emailError: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var countryError: UILabel!
    @IBOutlet weak var stateTextfield: UITextField!
    @IBOutlet weak var stateError: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var cityError: UILabel!
    @IBOutlet weak var pincodeTextField: UITextField!
    @IBOutlet weak var pincodeError: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var nextBtn: UIButton!
    
    var viewModel = loginValidationViewModal()
    override func viewDidLoad() {
        super.viewDidLoad()
     restoreForm()
    }
    func restoreForm(){
        nextBtn.isEnabled = false
        nameerror.isHidden = true
        comapanyNameError.isHidden = true
        sizeError.isHidden = true
        descriptionError.isHidden = true
        contactError.isHidden = true
        emailError.isHidden = true
        countryError.isHidden = true
        stateError.isHidden = true
        cityError.isHidden = true
        pincodeError.isHidden = true
    }
 //Mark :-  Name TextField..
    @IBAction func nameTextField(_ sender: Any) {
  
        if let Name = NameTextField.text{
            if let errorMessage =  viewModel.InvalidName(Name){
                nameerror.text = errorMessage
                nameerror.isHidden = false
            }else{
                nameerror.isHidden = true
            }
            checkForm()
        }
    }
    
    
    @IBAction func companyName(_ sender: Any) {
        if let CName = comapanyNameTextfield.text{
            if let errorMessage =  viewModel.InvalidName(CName){
                comapanyNameError.text = "\(errorMessage)company"
                comapanyNameError.isHidden = false
            }else{
                comapanyNameError.isHidden = true
            }
            checkForm()
        }
    }
    
    @IBAction func companySize(_ sender: Any) {
        if let cSize = companySizeTextfield.text{
        if let errorMessage =  viewModel.InvalidPassword(cSize){
            sizeError.text = errorMessage
            sizeError.isHidden = false
        }else{
            sizeError.isHidden = true
        }
        checkForm()
    }
    }
    
    
    @IBAction func companyDescription(_ sender: Any) {
        if let decription = ComapanyDescriptionTextField.text{
            if let errorMessage =  viewModel.InvalidName(decription){
                descriptionError.text = "\(errorMessage)company"
                descriptionError.isHidden = false
            }else{
                descriptionError.isHidden = true
            }
            checkForm()
        }
    }
    
    
    @IBAction func contactNumber(_ sender: Any) {
        if let contact = contactTextField.text{
            if let errorMessage =  viewModel.InvalidMobile(contact){
                contactError.text = errorMessage
                contactError.isHidden = false
            }else{
                contactError.isHidden = true
            }
            checkForm()
        }
        
    }
    
    @IBAction func emailId(_ sender: Any) {
        if let email = emailIDTextfield.text{
            if let errorMessage =  viewModel.InvalidUserName(email){
                emailError.text = "\(errorMessage)"
                emailError.isHidden = false
            }else{
                emailError.isHidden = true
            }
            checkForm()
        }
    }
    
    
    @IBAction func country(_ sender: Any) {
        if let country = countryTextField.text{
        if let errorMessage =  viewModel.Invalidcity(country){
            countryError.text = "\(errorMessage)country"
            countryError.isHidden = false
        }else{
            countryError.isHidden = true
        }
        checkForm()
    }
        
    }
    
    
    @IBAction func state(_ sender: Any) {
        if let state = stateTextfield.text{
            if let errorMessage =  viewModel.Invalidcity(state){
                stateError.text = "\(errorMessage) state"
                stateError.isHidden = false
            }else{
                stateError.isHidden = true
            }
            checkForm()
        }
    }
    
    @IBAction func city(_ sender: Any) {
        if let city = cityTextField.text{
            if let errorMessage =  viewModel.Invalidcity(city){
                cityError.text = "\(errorMessage)city"
                cityError.isHidden = false
            }else{
                cityError.isHidden = true
            }
            checkForm()
        }
    }
    
    
    @IBAction func pincode(_ sender: Any) {
        if let pincode = pincodeTextField.text{
            if let errorMessage =  viewModel.InvalidPassword(pincode){
                pincodeError.text = "pincode \(errorMessage)"
                pincodeError.isHidden = false
            }else{
                pincodeError.isHidden = true
            }
            checkForm()
        }
    }

// MARK :- checking Func
    func checkForm(){
        if nameerror.isHidden && comapanyNameError.isHidden && sizeError.isHidden && descriptionError.isHidden && contactError.isHidden && emailError.isHidden && countryError.isHidden && stateError.isHidden && cityError.isHidden && pincodeError.isHidden && NameTextField.text?.isEmpty == false && comapanyNameTextfield.text?.isEmpty == false  && companySizeTextfield.text?.isEmpty == false  && ComapanyDescriptionTextField.text?.isEmpty == false  && contactTextField.text?.isEmpty == false  && emailIDTextfield.text?.isEmpty == false  && countryTextField.text?.isEmpty == false  && stateTextfield.text?.isEmpty == false  && cityTextField.text?.isEmpty == false  && pincodeTextField.text?.isEmpty == false  {
            
            nextBtn.isEnabled = true
        }else{
            nextBtn.isEnabled = false
        }
    }


    
    
}
