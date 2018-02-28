//
//  ViewController.swift
//  HereMaps
//
//  Created by Pritesh Parekh on 1/24/18.
//  Copyright © 2018 Pritesh Parekh. All rights reserved.
//

import UIKit
import NMAKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: NMAMapView!
    let manager = CLLocationManager()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mapView.zoomLevel = 13.2
        mapView.set(geoCenter: NMAGeoCoordinates(latitude: 40.7128, longitude: -74.0060), animation: .linear)
        mapView.copyrightLogoPosition = NMALayoutPosition.bottomCenter
        addMapCircle()
        
    }
    
   
    
    func addMapCircle() {
       
       // if mapCircle == nil {
        let coordinates: NMAGeoCoordinates = NMAGeoCoordinates(latitude: 40.7128, longitude: -74.0060)
        var mapCircle = NMAMapCircle(coordinates, radius: 200)
        mapView.add(mapObject: mapCircle)
   //     }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self as? CLLocationManagerDelegate 
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.startUpdatingLocation()
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

