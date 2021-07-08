//
//  TryCell.swift
//  testui
//
//  Created by user on 10/6/2021.
//

import UIKit

class TryCell: UITableViewCell {
    
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lbldescrp: UILabel!
    @IBOutlet weak var lblprice: UILabel!
    @IBOutlet weak var img: UIImageView!
    static let Height: CGFloat = 60
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func initUI(){
        self.lblname.font = .boldSystemFont(ofSize: 18)
        self.lblname.textColor = .black
        
        self.lbldescrp.font = .systemFont(ofSize: 15, weight: .regular)
        self.lbldescrp.textColor = .black
        
        self.lblprice.font = .systemFont(ofSize: 12, weight: .light)
        self.lblprice.textColor = .gray
    }
    
    func setContent(modal: descripmodal){
        self.lblname.text = modal.name
        self.lbldescrp.text = modal.msg
        self.lblprice.text = modal.price
        self.img.image =  modal.img
        
        
    }
}
