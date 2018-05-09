
//
//  CreateMemeController.swift
//  MemeMe
//
//  Created by André Martingo on 09/05/2018.
//  Copyright © 2018 André Martingo. All rights reserved.
//

import Foundation
import UIKit

class CreateMemeController {
    
    var memeRepo:MemoRepository!
    
    init(){
        memeRepo = MemoRepository.sharedInstance
    }
    
    func save(topText: String, bottomText: String, originalImage: UIImage ,memedImage: UIImage) {
        // Create the meme
        let meme = Meme(topText: topText, bottomText: bottomText, originalImage: originalImage, memedImage: memedImage)
        // Add it to the memes array in the Application Delegate
        memeRepo.save(meme)
    }
}
