//
//  MemberCell.swift
//  testui
//
//  Created by user on 9/6/2021.
//

import UIKit

class MemberCell: UICollectionViewCell {

    @IBOutlet weak var ivUser: UIImageView!
    @IBOutlet weak var lvlName: UILabel!
    
    static let width: CGFloat = 100
    static let height: CGFloat = 140
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func setContent(modal: MsgModal){
        
        self.lvlName.text = modal.name
        if let img = modal.img{
            self.ivUser.image = img
        }
        
    }

}
