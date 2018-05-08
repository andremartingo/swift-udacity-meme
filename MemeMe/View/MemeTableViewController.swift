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
    let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    // MARK: Table View Data Source
    override func viewDidLoad() {
        memes = appDelegate.memes
        tableView.reloadData()
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
    
    // MARK: Push details VC
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailViewController.meme = self.memes[indexPath.row]
        navigationController!.pushViewController(detailViewController, animated: true)
    }
    @objc func addTapped() {
        print("tapped")
    }
}
