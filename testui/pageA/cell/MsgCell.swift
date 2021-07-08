//
//  MsgCell.swift
//  testui
//
//  Created by user on 9/6/2021.
//

import UIKit

class MsgCell: UITableViewCell {

    @IBOutlet weak var ivUser: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblMsg: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    
    static let Height: CGFloat = 60
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initUI()
    }
    
    func  initUI(){
        
        self.lblName.font = .boldSystemFont(ofSize: 18)
        self.lblName.textColor = .black
        
        self.lblMsg.font = .systemFont(ofSize: 15, weight: .regular)
        self.lblMsg.textColor = .black
        
        self.lblDate.font = .systemFont(ofSize: 12, weight: .light)
        self.lblDate.textColor = .gray
        
    }
    
    func setContent(modal: MsgModal){
        
        self.lblName.text = modal.name
        self.lblMsg.text = modal.msg
        self.lblDate.text = modal.date
        
    }
   
    
}
