//
//  MemoRepository.swift
//  MemeMe
//
//  Created by André Martingo on 08/05/2018.
//  Copyright © 2018 André Martingo. All rights reserved.
//

import Foundation
import UIKit

class MemoRepository {
    
    var memes = [Meme]()
    
    init() {
        loadMemes()
    }
    
    func getAll() -> [Meme] {
        return memes
    }
    
    private func loadMemes() {
        let memes = [
            Meme(topText: "U D A C I T Y", bottomText: "R O C K S", originalImage: UIImage(named: "placeholder")!, memedImage: UIImage(named: "meme1")!),
            Meme(topText: "WHEN YOURE AT WORK", bottomText: "TRYNG TO STAY POSATIVE", originalImage: UIImage(named: "placeholder")!, memedImage: UIImage(named: "meme2")!),
            Meme(topText: "YOURE A FUNNY GUY", bottomText: "I LIKE THAT", originalImage: UIImage(named: "placeholder")!, memedImage: UIImage(named: "meme3")!),
            Meme(topText: "WHAT IF 666", bottomText: "IS THE SQUARE ROOT", originalImage: UIImage(named: "placeholder")!, memedImage: UIImage(named: "meme4")!),
            Meme(topText: "BE THERE", bottomText: "OR BE SQUARE", originalImage: UIImage(named: "placeholder")!, memedImage: UIImage(named: "meme5")!),
            Meme(topText: "NEED AN ARC?", bottomText: "I NOAH GUY", originalImage: UIImage(named: "placeholder")!, memedImage: UIImage(named: "meme6")!)
        ]
        
        for meme in memes {
            self.memes.append(meme)
            print(meme)
        }
        
    }
    
}

