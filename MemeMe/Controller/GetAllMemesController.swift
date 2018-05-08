//
//  GetAllMemesController.swift
//  MemeMe
//
//  Created by André Martingo on 08/05/2018.
//  Copyright © 2018 André Martingo. All rights reserved.
//

import Foundation
import UIKit

class GetAllMemesController {
    
    var memeRepo:MemoRepository!
    
    init(){
        memeRepo = MemoRepository()
    }
    
    func getAllMemes() -> [Meme]{
        return memeRepo.getAll();
    }
}
