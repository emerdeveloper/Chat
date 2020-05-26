//
//  LoginViewController.swift
//  Chat
//
//  Created by Emerson Javid Gonzalez Morales on 23/05/20.
//  Copyright © 2020 Emerson Javid Gonzalez Morales. All rights reserved.
//

import UIKit
import Firebase

class LoginRegisterViewController: UIViewController {

    @IBOutlet weak var textViewEmail: UITextField!
    @IBOutlet weak var textViewPassword: UITextField!
    @IBOutlet weak var buttonSend: UIButton!
    var isRegister: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if !isRegister! {
            buttonSend.setTitle("Login", for: .normal)
        }
    }
    @IBAction func sendPressed(_ sender: UIButton) {
        if let email = textViewEmail.text, let password = textViewPassword.text {
            if isRegister! {
                register(email, password)
            } else {
                login(email, password)
            }
        }
    }
    
    func login(_ email: String, _ password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e)
            } else {
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
    
    func register(_ email: String, _ password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e)
            } else {
                print(authResult!)
                print(authResult!.user.displayName!)
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
}
