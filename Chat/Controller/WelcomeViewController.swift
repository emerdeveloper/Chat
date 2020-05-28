//
//  RegisterViewController.swift
//  Chat
//
//  Created by Emerson Javid Gonzalez Morales on 23/05/20.
//  Copyright © 2020 Emerson Javid Gonzalez Morales. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textViewMessage: UITextField!
    var isRegister: Bool?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func onSendPressed(_ sender: UIButton) {
        if let titleLabel = sender.titleLabel?.text {
            isRegister = titleLabel == K.register
            self.performSegue(withIdentifier: K.registerORLoginSegue, sender: self)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! LoginRegisterViewController
        vc.isRegister = isRegister
    }
}
