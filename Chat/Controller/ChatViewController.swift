//
//  ViewController.swift
//  Chat
//
//  Created by Emerson Javid Gonzalez Morales on 23/05/20.
//  Copyright © 2020 Emerson Javid Gonzalez Morales. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textFieldMessage: UITextField!
    
    var messages: [Message] = [
            Message(sender: "1@2.com", object: "Hola"),
            Message(sender: "w@q.com", object: "¿Cómo estás?"),
            Message(sender: "1@2.com", object: "Excelente")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = K.appName
        tableView.dataSource = self
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        do {
          try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
          
    }
}

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        cell.textLabel?.text = messages[indexPath.row].object
        return cell
    }
}
