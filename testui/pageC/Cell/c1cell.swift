//
//  c1cell.swift
//  testui
//
//  Created by user on 30/6/2021.
//

import UIKit

class c1cell: UITableViewCell {
    static let Height: CGFloat = 50
 
    lazy var lblname:UILabel? = {
    let lblname = UILabel()
        lblname.font = .boldSystemFont(ofSize: 20)
    return lblname
    }()
    
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initUI()
    }

    func initUI(){
        setlbl()
    }
    
    func setlbl(){
        self.contentView.addSubview(lblname!)
        self.lblname?.snp.makeConstraints{(make) -> Void in
            make.left.equalTo(15)
            make.right.equalTo(-15)
            make.centerY.equalTo(self.contentView)
          
        }
    }
    
    func setContent(str: String){
        
        self.lblname?.text = str
    }
    
    
}
