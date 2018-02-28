//
//  ViewController3.swift
//  HereMaps
//
//  Created by userpmp on 1/28/18.
//  Copyright © 2018 Pritesh Parekh. All rights reserved.
//

import UIKit
import NMAKit

class ViewController3: UIViewController {

    @IBOutlet weak var mapView3: NMAMapView!
    
    @IBOutlet weak var searchbar: UISearchBar!
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        //Ignoring User
        UIApplication.shared.beginIgnoringInteractionEvents()
        
        
        //Activity Indicator
        let activityindicator = UIActivityIndicatorView()
        activityindicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        activityindicator.center = self.view.center
        activityindicator.hidesWhenStopped = true
        activityindicator.startAnimating()
        
        
        self.view.addSubview(activityindicator)
        //Hide search bar
        searchBar.resignFirstResponder()
        dismiss(animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mapView3.zoomLevel = 13.2
        mapView3.set(geoCenter: NMAGeoCoordinates(latitude: 39.9612, longitude: -82.9988), animation: .linear)
        mapView3.copyrightLogoPosition = NMALayoutPosition.bottomCenter
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mapView3.delegate = self as? NMAMapViewDelegate
        let mm = NMAMapMarker(geoCoordinates: NMAGeoCoordinates(latitude: 39.9612, longitude: -82.9988), image: UIImage(named: "pointer-2.png")!)
        let cl = NMAClusterLayer()
        cl.addMarker(mm)
        mapView3.add(clusterLayer: cl)
        
        let redStyle = NMABasicClusterStyle()
        redStyle.fillColor = UIColor.red
        let greenStyle = NMABasicClusterStyle()
        greenStyle.fillColor = UIColor.green
        
        
        
        let theme = NMAClusterTheme()
        theme.setStyle(redStyle, range: NSMakeRange(10, 9))
        cl.theme = theme
        
        
       
        
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
