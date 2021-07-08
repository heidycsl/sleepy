//
//  PicCell.swift
//  testui
//
//  Created by user on 30/6/2021.
//

import UIKit
import SnapKit

class PicCell: UICollectionViewCell {
    
    static var height:CGFloat = 90
    static var width:CGFloat = 90
    
    lazy var imgContainer: UIView? = {
        let imgContainer = UIView()
        return imgContainer
    }()
    lazy var lbltitle: UILabel? = {
        lbltitle = UILabel()
        lbltitle?.backgroundColor = .yellow
        lbltitle?.textAlignment = .center
        lbltitle?.font = .systemFont(ofSize:10, weight: .medium)
    
        return lbltitle
        
        }()
    lazy var img: UIImageView? = {
       img = UIImageView()
        return img
    
        
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
        
    }
    func setUI(){
        setcell()
        setContainer()
        setImg()
//        setlbl()
       
    }
    
    func setcell(){
        self.backgroundColor = .white
    }
    func setContainer(){
        self.contentView.addSubview(imgContainer!)
        self.imgContainer?.snp.makeConstraints{(make) -> Void in
            make.top.bottom.left.right.equalTo(0)
        }
        
    }
    func setImg(){
        self.imgContainer?.addSubview(img!)
        
        self.img?.clipsToBounds = true
        self.img?.layer.cornerRadius = 45.0
        
        self.img?.snp.makeConstraints{(make) -> Void in
//            make.centerY.equalTo(self.contentView)
            make.top.left.right.equalTo(0)
//            make.bottom.equalTo(10)
             make.height.equalTo(90)
//            rmake.width.equalTo(PicCell.width)
            
            
        }
    }

//    func setlbl(){
//        self.contentView.addSubview(lbltitle!)
//        self.lbltitle?.snp.makeConstraints{(make) -> Void in
////            make.bottom.equalTo(0)
//            make.centerX.equalTo(contentView)
//            make.right.equalTo(-10)
//            make.left.equalTo(10)
//            make.top.equalTo(img!.snp.bottom).offset(5)
////            make.height.equalTo(10)
//        }
        
//    }
    
    func setContent(modal: CatModal){
        self.img?.image = modal.img
//        self.lbltitle?.text = modal.name
        
        
    }
}
