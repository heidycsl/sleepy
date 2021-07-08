//
//  foolishPage.swift
//  testui
//
//  Created by user on 10/6/2021.
//

import UIKit

class foolishPage: UIViewController {

    @IBOutlet weak var cv: UICollectionView!
    lazy var dataSource: [descripmodal] = [
        descripmodal("🐰", "禿子", "鷹醬",UIImage(named: "user")),
        descripmodal("🐶", "傻子", "鷹醬",UIImage(named: "user1")),
        descripmodal("🐔", "瘋子", "鷹醬",UIImage(named: "user2")),
        descripmodal("😄" , "腦子", "鷹醬",UIImage(named: "user")),
        descripmodal("🧐", "白子", "鷹醬",UIImage(named: "user1")),
        descripmodal("😇", "黑子", "鷹醬",UIImage(named: "user2"))]
    
    lazy var Msgs: [MsgModal] = [
        MsgModal("🐰","","",UIImage(named: "user")),
        MsgModal("🐔","","",UIImage(named: "user1")),
        MsgModal("🐶","","",UIImage(named: "user2"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
    }


    func initUI(){
        setupCV()
        setupNav()
        
    }
    func setupNav(){
        
//        self.title = "Fxxx"
    }
    
    func setupCV(){
        
        self.cv.dataSource = self
        self.cv.delegate = self
        self.cv.register(UINib(nibName: "usercell", bundle: nil), forCellWithReuseIdentifier: "usercell")
        self.cv.register(UINib(nibName: "MemberCell", bundle: nil), forCellWithReuseIdentifier: "MemberCell")
        
        
        
    }

}
extension foolishPage: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 2
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if section == 0{
            
            return self.dataSource.count
            
        }
        
        return self.Msgs.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "usercell", for: indexPath) as! usercell
        let item = self.dataSource[indexPath.row]
        cell.setContent(modal: item)
            return cell
            
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemberCell", for: indexPath) as! MemberCell
            let member = self.Msgs[indexPath.row]
            cell.setContent(modal: member)
            
            
            return cell
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.section == 0{
            
            return CGSize(width: usercell.width, height: usercell.height)
            
        }
        
        return CGSize(width:MemberCell.width, height: MemberCell.height)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         
        let item = self.dataSource[indexPath.row]
        let vc = TransferPageViewController(modal: item)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5
        
    }
    
   
}
