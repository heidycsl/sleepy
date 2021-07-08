//
//  c1cell.swift
//  testui
//
//  Created by user on 30/6/2021.
//

import UIKit

class c2cell: UITableViewCell {
    
    
    static var height:CGFloat = 60
    
    lazy var lblname:UILabel? = {
    let lblname = UILabel()
        lblname.font = .boldSystemFont(ofSize: 17)
    return lblname
    }()
    
    lazy var lblmsg:UILabel? = {
        let lblmsg = UILabel()
        lblmsg.font = .boldSystemFont(ofSize: 15)
        return lblmsg
        
    }()
    
    lazy var img: UIImageView? = {
        
        img = UIImageView()
        return img
    }()
    lazy var lbldate:UILabel? = {
        
        let lbldate = UILabel()
        lbldate.textAlignment = .center
        lbldate.font =  .systemFont(ofSize: 12, weight: .light)
        return lbldate
        
    }()
    
    lazy var imgContainer: UIView? = {
        let imgContainer = UIView()
        return imgContainer
    }()
    
    lazy var lblContainer: UIView? = {
        let lblCotainer = UIView()
        return lblCotainer
        
    }()
    static let Height: CGFloat = 50
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initUI()
    }

    func initUI(){
        setContainer()
        setimg()
        setlbl()
//        self.img?.layer.cornerRadius = 30

       
    }
    
    func  setContainer() {
        self.contentView.addSubview(imgContainer!)
//        self.imgContainer?.layer.shadowOpacity = 0.5
//        self.imgContainer?.layer.cornerRadius = 15.0
        self.imgContainer?.snp.makeConstraints{(make) -> Void in
//          make.top.equalTo(0)
            make.left.equalTo(contentView.safeArea.left).offset(5)
            make.centerY.equalTo(self.contentView)
          make.height.equalTo(60)
            make.width.equalTo(60)
        }
        
        self.contentView.addSubview(lblContainer!)
        self.lblContainer!.snp.makeConstraints{(make) -> Void in
            make.left.equalTo(imgContainer!.snp.right).offset(10)
            make.top.bottom.equalTo(0)
            make.right.equalTo(-100)
            
            
    }
    
    }
    
    func setimg(){
        self.imgContainer?.addSubview(img!)
        img?.clipsToBounds = true

        self.img?.layer.cornerRadius = 30.0

        self.img?.snp.makeConstraints{(make) -> Void in
//          make.top.equalTo(0)
            make.left.equalTo(0)
            make.centerY.equalTo(self.contentView)
          make.height.equalTo(60)
            make.width.equalTo(60)
            
        }
       
        
    }
    
    func setlbl(){
        self.lblContainer?.addSubview(lblname!)
//        lblname?.text = "hahahahahhahahahhahahaahhahahahahahhahahahaahah"
        self.lblname?.snp.makeConstraints{(make) -> Void in
//            make.left.equalTo(60)
            make.right.equalTo(0)
            make.top.equalTo(10)
//            make.centerX.equalTo(self.contentView)
            make.left.equalTo(0)
        }
        
        self.lblContainer?.addSubview(lblmsg!)
       
        self.lblmsg?.snp.makeConstraints{(make) -> Void in
            make.top.equalTo(lblname!.snp.bottom)
            make.left.equalTo(0)
            make.right.equalTo(0)
            
        }
        
        self.contentView.addSubview(lbldate!)
        
        self.lbldate?.snp.makeConstraints{(make) -> Void in
            make.centerY.equalTo(self.lblname!)
            make.right.equalTo(0)
            make.left.equalTo(lblContainer!.snp.right).offset(5)
        }
       
    }
    
  
    
    
    
    
    
    
    
    func setContent(modal: CatModal){
        
        self.lblname?.text = modal.name
        self.lblmsg?.text = modal.msg
        self.lbldate?.text = modal.date
        img?.image = modal.img
    }
    
    
}
