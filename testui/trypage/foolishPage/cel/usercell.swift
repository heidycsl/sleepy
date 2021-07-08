//
//  usercell.swift
//  testui
//
//  Created by user on 10/6/2021.
//

import UIKit

class usercell: UICollectionViewCell {
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    static let width: CGFloat = 100
    static let height: CGFloat = 120
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
        // Initialization code
    }
    
    func setUI(){
        
        self.img.layer.cornerRadius = 35
        
    }
    func setContent(modal: descripmodal)
    {
        
        self.lblname.text = "\(modal.name) \(modal.msg)"
        self.img.image = modal.img
        
        
    }
}
