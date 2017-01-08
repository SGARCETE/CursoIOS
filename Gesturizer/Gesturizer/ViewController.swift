//
//  ViewController.swift
//  Gesturizer
//
//  Created by Jonathan on 12/19/16.
//  Copyright © 2016 mercadolibre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var singleTapGesture: UITapGestureRecognizer!
    @IBOutlet var doubleTapGesture: UITapGestureRecognizer!
    
    @IBOutlet weak var gestureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        singleTapGesture.require(toFail: doubleTapGesture)
    }
    
    func showGestureName(name: String) {
        gestureLabel.text = name
        
        UIView.animate(withDuration: 1, animations: {
            self.gestureLabel.alpha = 1
        }) { _ in
            UIView.animate(withDuration: 1, animations: {
                self.gestureLabel.alpha = 0
            })
        }
    }
    
    func makeLabelOpaque() {
        gestureLabel.alpha = 1
    }
    
    @IBAction func doubleTapAction(_ sender: Any) {
        showGestureName(name: "DOUBLE TAP")
    }
    
    @IBAction func tapAction(_ sender: Any) {
        showGestureName(name: "TAP")
    }
    
    @IBAction func pinchAction(_ sender: UIPinchGestureRecognizer) {
        if sender.state == .ended {
            showGestureName(name: "PINCH")
        }
    }
    
    @IBAction func rotationAction(_ sender: UIRotationGestureRecognizer) {
        if sender.state == .ended {
            showGestureName(name: "ROTATION")
        }
    }
    
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        if sender.state == .ended {
            showGestureName(name: "SWIPE RIGHT")
        }
    }
}
