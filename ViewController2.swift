//
//  ViewController2.swift
//  HereMaps
//
//  Created by userpmp on 1/24/18.
//  Copyright © 2018 Pritesh Parekh. All rights reserved.
//

import UIKit
import NMAKit

class ViewController2: UIViewController {

    @IBOutlet var mapView2: NMAMapView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mapView2.zoomLevel = 13.2
        mapView2.set(geoCenter: NMAGeoCoordinates(latitude: 39.9612, longitude: -82.9988), animation: .linear)
        mapView2.copyrightLogoPosition = NMALayoutPosition.bottomCenter
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let router = NMAUrbanMobilityRouter()
        var stops = [Any]()
        let coordsStart = NMAGeoCoordinates(latitude: 49.261789, longitude: -122.999591)
        let coordsEnd = NMAGeoCoordinates(latitude: 49.254150, longitude: -123.016819)
        let waypointStart = NMAWaypoint()
        waypointStart.originalPosition = coordsStart
        waypointStart.navigablePosition = coordsStart
        let waypointEnd = NMAWaypoint()
        waypointEnd.originalPosition = coordsEnd
        waypointEnd.navigablePosition = coordsEnd
        stops.append(waypointStart)
        stops.append(waypointEnd)
        let currentRoutingMode = NMARoutingMode()
       //***** currentRoutingMode.transportMode = NMAUrbanMobilityTransport
        
//        let request: NMAGeocodeRequest? = NMAGeocoder.shared().createGeocodeRequest(withQuery: string, searchArea: geoBoundingBox, locationContext: geoCoordinates)
    }
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
