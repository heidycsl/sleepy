//
//  Cat.swift
//  testui
//
//  Created by user on 30/6/2021.
//

import UIKit

struct CatModal {
    var name: String
    var msg: String
    var date: String
    var img: UIImage
    
    
    init(_ name: String, _ msg: String = "", _ date: String = "", _ img:UIImage = UIImage()){
        
        self.name = name
        self.msg = msg
        self.date = date
        self.img = img
        
    }
   
}

