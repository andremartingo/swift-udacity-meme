//
//  TableViewController.swift
//  MemeMe
//
//  Created by André Martingo on 02/05/2018.
//  Copyright © 2018 André Martingo. All rights reserved.
//

import UIKit

class MemeTableViewController: UITableViewController{
    
    // MARK: Properties
    var data = [String]()
    
    // MARK: Table View Data Source
    
    override func viewDidLoad() {
        data.append("first Element")
        data.append("Second Element")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeCell")!
        let data = self.data[(indexPath as NSIndexPath).row]
        
        // Set the name
        cell.textLabel?.text = "asdnasidnasodnasodnasoid"
        
        return cell
    }
}
