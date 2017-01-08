//
//  Pin.swift
//  Found-Course
//
//  Created by Jonathan on 12/20/16.
//  Copyright © 2016 mercadolibre. All rights reserved.
//

import Foundation
import MapKit

class Pin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
    
}
