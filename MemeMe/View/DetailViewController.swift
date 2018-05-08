//
//  DetailViewController.swift
//  MemeMe
//
//  Created by André Martingo on 08/05/2018.
//  Copyright © 2018 André Martingo. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController{
    // MARK: Properties
    
    var meme:Meme!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        imageView.image = meme.memedImage
    }
}

