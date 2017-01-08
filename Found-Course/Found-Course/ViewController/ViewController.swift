//
//  ViewController.swift
//  Found-Course
//
//  Created by Jonathan on 12/20/16.
//  Copyright © 2016 mercadolibre. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapView.delegate = self
        mapView.setUserTrackingMode(.follow, animated: true)
        
    }

    @IBAction func AddPinAction(_ sender: UIBarButtonItem) {
        
        let pin = Pin(coordinate: mapView.userLocation.coordinate)
        mapView.addAnnotation(pin)
        
    }
    
    
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        
        let width = 1000.0 //metros
        let height = 1000.0
        
        let region = MKCoordinateRegionMakeWithDistance(center, width, height)
        
        mapView.setRegion(region, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

