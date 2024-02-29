//
//  LoginValidationModel.swift
//  JobPortal
//
//  Created by Mac on 29/02/24.
//

import Foundation
final class loginValidationViewModal{
    
    //Mark : - Email Rex ex
    
    func InvalidUserName(_ value: String) -> String?{
        let rg = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", rg)
        if !predicate.evaluate(with: value)
        {
            return "Invalid"
        }
        return nil
    }
    //Mark : - Password Rex ex
    
    func InvalidPassword(_ value: String) -> String?{
        let rg = "^[0-9]{6}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", rg)
        if !predicate.evaluate(with: value)
        {
            return "Must Be Contains 6 Digits"
        }
        return nil
    }
    
    func InvalidName(_ value: String) -> String?{
        let rg = "^[a-zA-Z' -]+$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", rg)
        if !predicate.evaluate(with: value)
        {
            return "Invalid Full Name"
        }
        return nil
        }
    func Invalidcity(_ value: String) -> String?{
        let rg = "([a-zA-Z',.-]+( [a-zA-Z',.-]+)*){2,30}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", rg)
        if !predicate.evaluate(with: value)
        {
            return "Invalid"
        }
        return nil
        }
    
    
    func InvalidMobile(_ value: String) -> String?{
        let rg = "^[7-9][0-9]{9}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", rg)
        if !predicate.evaluate(with: value)
        {
            return "Invalid Contact Number"
        }
return nil
    }
}
