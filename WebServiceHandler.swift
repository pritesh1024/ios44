//
//  WebServiceHandler.swift
//  HereMaps
//
//  Created by Pritesh Parekh on 2/26/18.
//  Copyright © 2018 Pritesh Parekh. All rights reserved.
//

import Foundation
import UIKit


class WebServiceHandler: NSObject {
    
    
    func getData() {
        
    let jsonURLString = "https://apigtwdev.ford.com/fsmmmjp/sb/journey-planning/routing-options"

    guard let theURL = URL(string: jsonURLString) else {return}
        
        URLSession.shared.dataTask(with: theURL) { (data, response, error) in
            guard let data = data else { return }
            
           
                let decoder = JSONDecoder()
                
                do {
                    let availableTrip = try decoder.decode(TripOption.self, from: data)
                    print(availableTrip)
                } catch {
                    print(error)
                }
            
        

      
    
        }
}
}
