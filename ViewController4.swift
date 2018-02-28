//
//  ViewController4.swift
//  HereMaps
//
//  Created by userpmp on 1/28/18.
//  Copyright © 2018 Pritesh Parekh. All rights reserved.
//

import UIKit
import NMAKit

class ViewController4: UIViewController, UITextFieldDelegate,NMAMapViewDelegate {

    @IBOutlet weak var mapView4: NMAMapView!
    
    @IBOutlet weak var enterDest: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var datePickerView: UIView!
    
    let manager = CLLocationManager()
   
    
    @IBAction func timeButton(_ sender: Any) {
        datePickerView.isHidden = false
    }
    @IBAction func doneDatePicker(_ sender: Any) {
        datePickerView.isHidden = true
    }
    @IBAction func cancelDatePicker(_ sender: Any) {
        datePickerView.isHidden = true
    }
    
    
    
    func locationManager( _ manager : CLLocationManager, didUpdateLocations location: [CLLocation]) {
      
        
    }
        override func viewDidLoad() {
        super.viewDidLoad()
            // Customizing the navigation bar apperence
            
            let nav = self.navigationController?.navigationBar
            nav?.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor(displayP3Red: 0, green: 0.55, blue: 0.81, alpha: 1)]
            
            
            
            let vc = ViewController5()
            vc.enterDEST = enterDest
            
            enterDest.delegate = self
            mapView4.delegate = self
       
            manager.delegate = self as? CLLocationManagerDelegate
            manager.desiredAccuracy = kCLLocationAccuracyBest
            manager.requestWhenInUseAuthorization()
            manager.startUpdatingLocation()
      
            navigationController?.navigationBar.barTintColor = UIColor.white
            navigationItem.leftBarButtonItem?.tintColor = UIColor(displayP3Red: 0, green: 0.55, blue: 0.81, alpha: 1)
            navigationItem.rightBarButtonItem?.tintColor = UIColor(displayP3Red: 0, green: 0.55, blue: 0.81, alpha: 1)
            navigationItem.titleView?.tintColor = UIColor.blue
            

            mapView4.positionIndicator.isVisible = true
            datePickerView.isHidden = true
            if NMAPositioningManager.sharedInstance().startPositioning() {
                
                NotificationCenter.default.addObserver(self, selector: #selector(positionDidUpdate), name: NSNotification.Name.NMAPositioningManagerDidUpdatePosition, object: NMAPositioningManager.sharedInstance())
                
                NotificationCenter.default.addObserver(self, selector: #selector(didLosePosition), name: NSNotification.Name.NMAPositioningManagerDidLosePosition, object: NMAPositioningManager.sharedInstance())
               
         }
            
    }

    @objc func  positionDidUpdate() {
        
        let position = NMAPositioningManager.sharedInstance().currentPosition
        mapView4.set(geoCenter: (position?.coordinates)!, animation: NMAMapAnimation.linear)
    }
    
    @objc func didLosePosition() {
        
    }
    @objc func handledismisskeyboard(){
        view.endEditing(true)
    
    }
    
    func mapViewDidBeginMovement(_ mapView: NMAMapView) {
       
        self.enterDest.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        UIView.animate(withDuration: 0.5) {
            self.enterDest.resignFirstResponder()
        }
        if let vc = storyboard?.instantiateViewController(withIdentifier: "info") as? ViewController5{
            vc.destinationString = self.enterDest.text
            self.navigationController?.present(vc, animated: true, completion: nil)
        }
        
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.enterDest.resignFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let Dc = segue.destination as? ViewController5{
            Dc.destinationString = enterDest.text!
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        NMAPositioningManager.sharedInstance().stopPositioning()
        
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.NMAPositioningManagerDidUpdatePosition, object: NMAPositioningManager.sharedInstance())
        
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.NMAPositioningManagerDidLosePosition, object: NMAPositioningManager.sharedInstance())
        
        
    }
}
