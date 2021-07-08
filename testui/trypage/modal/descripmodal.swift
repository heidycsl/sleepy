//
//  descripmodal.swift
//  testui
//
//  Created by user on 10/6/2021.
//

import UIKit

struct descripmodal {

        var name: String
        var msg: String
        var price: String
        var img: UIImage?
        
        
        init(_ name: String, _ msg: String = "", _ price: String = "", _ img:UIImage? = UIImage()){
            
            self.name = name
            self.msg = msg
            self.price = price
            self.img = img
            
        }
       
    }
