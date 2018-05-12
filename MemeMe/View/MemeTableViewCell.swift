//
//  MemeTableViewCell.swift
//  MemeMe
//
//  Created by André Martingo on 12/05/2018.
//  Copyright © 2018 André Martingo. All rights reserved.
//

import UIKit

class MemeTableViewCell : UITableViewCell {
    
    var titLelabel: UILabel = UILabel()
    var imageField : UIImageView = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "MemeTableViewCell")
        configureViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }
    
    func configure(title: String, image: UIImage) {
        
        self.titLelabel.text = title
        self.imageField.image = image
        
        configureViews()
    }
    
    func configureViews() {
        
        addSubview(titLelabel)
        addSubview(imageField)
        
        imageField.translatesAutoresizingMaskIntoConstraints = false
        
        //Image
        imageField.topAnchor.constraint(equalTo: self.topAnchor, constant: 1).isActive = true
        imageField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1).isActive = true
        imageField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        imageField.widthAnchor.constraint(equalToConstant: 60).isActive = true
        imageField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        titLelabel.translatesAutoresizingMaskIntoConstraints = false
        
        // TitleLabel
        titLelabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        titLelabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        //Right
        titLelabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        //Left
        titLelabel.leadingAnchor.constraint(equalTo: self.imageField.trailingAnchor, constant: 15).isActive = true
        titLelabel.textColor = .black
        
    }
}



