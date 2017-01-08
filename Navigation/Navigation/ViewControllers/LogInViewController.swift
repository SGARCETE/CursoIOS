//
//  LogIn.swift
//  Navigation
//
//  Created by Jonathan on 12/21/16.
//  Copyright © 2016 mercadolibre. All rights reserved.
//

import Foundation
import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    
    var user : User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func logIn(){
        user = User()
        let username = usernameLabel.text
        let password = passwordLabel.text
        if let username = username, let password = password, let user = user {
            user.login(user: username, password: password)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.destination is MainViewController {
        if segue.identifier == "SignInSuccess" {
            if let user = user {
                let vc = segue.destination as! UINavigationController
                (vc.topViewController as! MainViewController).user = user
                print("\(user)")
            }
        }
    }
    
    func showError() {
        let alert = UIAlertController.init(title: "Error", message: "Something went wrong", preferredStyle: .alert)
        let action = UIAlertAction.init(title: "Ok", style: .default) { _ in }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        logIn()
        if let user = user {
            if (user.isLoggedIn) {
                return true
            } else {
                showError()
            }
        }
        return false
    }
}
