//
//  pageB.swift
//  testui
//
//  Created by user on 9/6/2021.
//

import UIKit


class pageB: UIViewController {

    @IBOutlet weak var cv: UICollectionView!
    
    lazy var Msgs: [MsgModal] = [
        MsgModal("🐰","","",UIImage(named: "user")),
        MsgModal("🐔","","",UIImage(named: "user1")),
        MsgModal("🐶","","",UIImage(named: "user2"))
    ]
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        initUI()

        // Do any additional setup after loading the view.
    }
    
    func initUI(){
        
        setupNav()
        setupCV()
        
    }
    
    func setupNav(){
        self.title = "animal user"
//
       
        
    }
    
    func setupCV(){
        self.cv.delegate = self //listener
        self.cv.dataSource = self
        self.cv.register(UINib(nibName:"MemberCell", bundle: nil), forCellWithReuseIdentifier: "MemberCell")


        
    }

   

}
extension pageB: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.Msgs.count
    }

    //inital cell setup
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemberCell", for: indexPath) as! MemberCell
        let member = self.Msgs[indexPath.row]
        cell.setContent(modal: member)
        
        
        return cell
    }
    
    //each cell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: MemberCell.width, height: MemberCell.height)    }
    
    //MARK: row spacing
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 10
        
    }
    
    //MARK: item spacing
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5
        
    }
    
   
}
