//
//  ViewController6.swift
//  HereMaps
//
//  Created by Pritesh Parekh on 2/23/18.
//  Copyright © 2018 Pritesh Parekh. All rights reserved.
//

import UIKit

class ViewController6: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var departTimeView: UIView!
    @IBOutlet weak var departTimeLabel: UILabel!
    @IBOutlet weak var originDestView: UIView!
    @IBOutlet weak var originView: UITextField!
    @IBOutlet weak var destView: UITextField!
    @IBAction func swapButton(_ sender: Any) {
    }
    @IBOutlet weak var optionTableView: UITableView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
                
                print ("dfdghgvjhvjhllllllll")
                
                
                
            }.resume()
             print ("dfdghgvjhvjhllllllll")
        }
        
        getData()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = optionTableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        return cell
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
