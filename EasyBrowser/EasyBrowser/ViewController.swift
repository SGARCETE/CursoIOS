//
//  ViewController.swift
//  EasyBrowser
//
//  Created by Jonathan on 12/18/16.
//  Copyright © 2016 mercadolibre. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text {
            if let url = URL(string: text) {
                let request = URLRequest(url: url)
                webView.loadRequest(request)
                textField.resignFirstResponder()
            }
        }
        return true
    }
    
    @IBAction func openWebPage(_ sender: Any) {
        //        if let url = URL(string: "http://www.mercadolibre.com.ar") {
        //            UIApplication.shared.open(url, options: [:], completionHandler: { (success) in
        //                print("URL Opened \(success)")
        //            })
        //        }
    }
    
    
}

