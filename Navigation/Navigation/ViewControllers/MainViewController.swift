//
//  MainViewController.swift
//  Navigation
//
//  Created by Jonathan on 12/21/16.
//  Copyright © 2016 mercadolibre. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController, UserDetailDelegate  {
    
    var user : User?
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var tokenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (user != nil) {
            updateLabels()
        } else {
            user = User()
            updateLabels()
        }
    }
    
    func refreshUsername() {
        updateLabels()
    }
    
    func updateLabels() {
        if let user = user {
            usernameLabel.text = user.username
            tokenLabel.text = user.token
        }
    }
    
    @IBAction func logOutAction(_ sender: UIBarButtonItem) {
        user?.logOut()
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LogInVC") as! UINavigationController
        UIApplication.shared.keyWindow?.rootViewController = controller
        UIView.transition(from: (self.navigationController?.view)!, to: controller.view, duration: 1, options: .transitionFlipFromRight, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "userDetail") {
            if let user = user {
                let userDetailVC = segue.destination as! UserDetail
                userDetailVC.delegate = self
                userDetailVC.user = user
            }
        }
    }
}
