//
//  User.swift
//  Navigation
//
//  Created by Jonathan on 12/21/16.
//  Copyright © 2016 mercadolibre. All rights reserved.
//

import Foundation

class User {
    
    private let tokenKey = "token_key"
    private let usernameKey = "username_key"
    
    var token : String? {
        set {
            UserDefaults.standard.set(newValue, forKey: tokenKey)
            UserDefaults.standard.synchronize()
        }
        get {
            return UserDefaults.standard.string(forKey: tokenKey)
        }
    }
    
    var username : String? {
        set {
            UserDefaults.standard.set(newValue, forKey: usernameKey)
            UserDefaults.standard.synchronize()
        }
        get {
            return UserDefaults.standard.string(forKey: usernameKey)
        }
    }
    
    func logOut() {
        UserDefaults.standard.removeObject(forKey: tokenKey)
        UserDefaults.standard.removeObject(forKey: usernameKey)
        UserDefaults.standard.synchronize()
    }
    
    var isLoggedIn : Bool {
        return token != nil
    }
    
    func login(user: String, password: String) {
        //Fake request al server
        if (password == "password") {
            token = NSUUID().uuidString
            username = user
            print("Token \(token)")
        }
    }
}
