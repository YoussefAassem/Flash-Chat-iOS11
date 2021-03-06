//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (AuthDataResult, Error) in
            guard let user = AuthDataResult?.user else {
                print(Error.debugDescription)
                return
            }
            print("Success registering user \(user.email!) !")
            self.performSegue(withIdentifier: "goToChat", sender: self)
        }
        
        //TODO: Set up a new user on our Firbase database
        
        

        
        
    } 
    
    
}
