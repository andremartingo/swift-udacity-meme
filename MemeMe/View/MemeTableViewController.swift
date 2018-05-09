//
//  TableViewController.swift
//  MemeMe
//
//  Created by André Martingo on 02/05/2018.
//  Copyright © 2018 André Martingo. All rights reserved.
//

import UIKit

class MemeTableViewController: UITableViewController,UIViewControllerTransitioningDelegate{
    
    // MARK: Properties
    var memes = [Meme]()
    var getAllMemesController : GetAllMemesController!
    
    // MARK: Table View Data Source
    
    //When View Appear
    override func viewWillAppear(_ animated: Bool) {
        memes = getAllMemesController.getAllMemes()
        tableView.reloadData()
    }
    
    //First Time View
    override func viewDidLoad() {
        super.viewDidLoad()
        getAllMemesController = GetAllMemesController()
        navigationItem.title = "Memes"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add , target: self, action: #selector(addTapped))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeCell")!
        let data = memes[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = data.topText
        cell.detailTextLabel?.text = "\(data.topText) ... \(data.bottomText)"
        cell.imageView?.image = data.memedImage;
        return cell
    }
    
    override func tableView(_ tableView: UITableView,editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
            // delete item at indexPath
        }
        
        let share = UITableViewRowAction(style: .normal, title: "Disable") { (action, indexPath) in
            // share item at indexPath
        }
        
        share.backgroundColor = UIColor.blue
        
        return [delete, share]
    }
    
    // MARK: Push details VC
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailViewController.meme = self.memes[indexPath.row]
        navigationController!.pushViewController(detailViewController, animated: true)
    }
    @objc func addTapped() {
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController!.pushViewController(viewController, animated: true)    
        
    }
}
