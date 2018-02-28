//
//  ViewController5.swift
//  HereMaps
//
//  Created by userpmp on 1/29/18.
//  Copyright © 2018 Pritesh Parekh. All rights reserved.
//

import UIKit
import NMAKit

class ViewController5: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mapView5: NMAMapView!
    @IBOutlet weak var fromToView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var myPlacesView: UIView!
    @IBOutlet weak var enterORIGIN: UITextField!
    @IBOutlet weak var enterDEST: UITextField!
    @IBOutlet weak var addHomeTblView: UITableView!
    @IBOutlet weak var tableView: UITableView!
    var lister = [addHome]()
    var listViewData:[addHome] = [addHome]()
    
    var destinationString:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //UIApplication.shared.stat
       // fromToView.backgroundColor = UIColor(displayP3Red: 0, green: 0.55, blue: 0.81, alpha: 1)
        enterDEST.text = destinationString!
        
        myPlacesView.backgroundColor = UIColor(displayP3Red:0.16, green:0.37, blue:0.76, alpha:1)
        let myHome:addHome = addHome(imageAdd: nil, labelAdd: nil)
        listViewData.append(myHome)
        self.putAddress()
        UINavigationBar.appearance().backgroundColor = UIColor(displayP3Red: 0, green: 0.55, blue: 0.81, alpha: 1)
        
     tableView.tableFooterView = UIView()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lister.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as? addHomeTViewCell
        let lists = lister[indexPath.row]
        
        cell?.listViewLabel.text = lists.labelAdd
        cell?.listViewImage.image = lists.imageAdd
        
        
        return cell!
    }
    @IBAction func flipButton(_ sender: Any) {
        
    }
    
    func putAddress() {
        
        
        let list1 = addHome(imageAdd: #imageLiteral(resourceName: "pointer-2"), labelAdd: "Add Home")
        let list2 = addHome(imageAdd: #imageLiteral(resourceName: "pointer-2"), labelAdd: "Add Work")
        let list3 = addHome(imageAdd: #imageLiteral(resourceName: "pointer-2"), labelAdd: "Add Favourities")
        
        lister += [list1,list2,list3]
        
        
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
            
}
        
        

    


