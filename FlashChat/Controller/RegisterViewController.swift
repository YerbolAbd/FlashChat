//
//  RegisterViewController.swift
//  FlashChat
//
//  Created by Ербол on 04.06.2022.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
      
class RegisterViewController: UIViewController {

    @IBOutlet weak var warning: UILabel!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if  let email = emailTextfield.text , let password = passwordTextfield.text {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                self.warning.text = e.localizedDescription
            } else {
                self.performSegue(withIdentifier: K.registerSegue, sender: self)
            }
        }
        }
    }
}
