//
//  UserDetail.swift
//  Navigation
//
//  Created by Jonathan on 12/21/16.
//  Copyright © 2016 mercadolibre. All rights reserved.
//

import Foundation
import UIKit

protocol UserDetailDelegate {
    func refreshUsername()
}

class UserDetail: UIViewController {
    
    var user: User?
    
    var delegate: UserDetailDelegate?
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = user {
            usernameTextField.text = user.username
        }
    }
    
    @IBAction func updateAction(_ sender: Any) {
        if let user = user {
            user.username = usernameTextField.text
            delegate?.refreshUsername()
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
