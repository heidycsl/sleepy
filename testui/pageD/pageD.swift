//
//  pageDViewController.swift
//  testui
//
//  Created by user on 30/6/2021.
//

import UIKit
import SnapKit

class pageD: UIViewController {

    lazy var cat: [CatModal] = [
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat1")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat2")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat3")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat4")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfkrkhjfkjhshfkhjshgdfksldfghsldjfghkljfgdkjabfkhajfljasdmm,nsdhfajlfhajkbfk,sm,cmvnahujkfba,snd,mzsbdkfgaiuwefakhbdsvknzDBKJFAJBDJFBHNKLMJNHBJNKLJHBNKKHBJNKNHBNKLJHBNKJHBNKSDHBDNKMNJHBDNKFHDSBNKFHABDNKHBNKHBKNHBNJHBJNHBNJHBNJHBNKHBNKHNKHNKHBJHNKHNKHKJHBKDHBNKHBNKBHNKHBHKHBHKHGVBHKNHBJGVBHKBJHDHDDHHDHDHDHDHDDHHDDHHDlsd,nvaiehigakewfhnlzjnsdlsdkhbkffab,sdnzbdkhbgkhfajlm,nsdfkb.ahLSDgfgldfbKSD<MBfDShlfje", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxddfkhbZmßbhfnb,zmsfbajyhgsbflajzhsbfdDSBJHNKFBHDSJKNFDKSHBNJFDKUHFNJDSFKJDOLVUDJSNFSDHFJSDNJKDSNKJSDNFKJSDFJKDSNFJDSNFJKDSNFKJNSDKJFNKSDJNFKJDNFKJNFJKDNFKSDFNKSDNFJKSDNFKJNDKFNSDKJNFJKDNJNJMclaujYGHFBcliyGBflgHLJBFDLIYGfeiykhbSK>HiluHAILb;wyhiLKBDcfygjSHBNfLUI7ghjk",  "2021/5/6",UIImage(named: "cat5")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat6")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat7")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat8")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat9")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat10")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat1")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat2")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat3")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat4")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat5")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat6")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat7")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat8")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat9")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat10")!), CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat1")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat2")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat3")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat4")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat5")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat6")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat7")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat8")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat9")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat10")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat1")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat2")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat3")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat4")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat5")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat6")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat7")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat8")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat9")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat10")!)






    ]
    
   
    lazy var cv:UICollectionView? = {
      cv = UICollectionView(frame: self.view.frame, collectionViewLayout: UICollectionViewFlowLayout())
        
        self.cv?.backgroundColor = .white
    
       

      
        return cv
        //        self.cv?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        
        //如果係collecton view programmely 唔可以只係（）

       

    }()

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = .cyan
        initUI()
        // Do any additional setup after loading the view.
    }


    func  initUI(){
        setupCV()
        setupNav()
    
    }
    
    
    func setupNav(){
        self.title = "好X多貓"
    }

    func setupCV(){

        self.view.addSubview(cv!)
       
        self.cv?.snp.makeConstraints{(make) -> Void in
            make.top.equalTo(20)
//            make.bottom.equalTo(0)
            make.left.equalTo(view.safeArea.left)
            make.right.equalTo(view.safeArea.right) //**
//            make.leading.trailing.equalToSuperview()
//
                 make.bottom.equalTo(view.safeArea.bottom)

        }
        self.cv?.dataSource = self
        self.cv?.delegate = self
        self.cv?.register(UINib(nibName: "PicCell", bundle: nil), forCellWithReuseIdentifier: "PicCell")

    }
    
    
 
}


extension pageD: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.cat.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PicCell", for: indexPath) as! PicCell
        let item = self.cat[indexPath.row]
        cell.setContent(modal: item)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: PicCell.width, height:PicCell.height)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = self.cat[indexPath.row]
        let vc = pagePorfilo(modal: item)
        self.navigationController?.pushViewController(vc, animated:true)
    }

}


//import UIKit
//class pageD: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
//        layout.itemSize = CGSize(width: 60, height: 60)
//
//        let myCollectionView:UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
//        myCollectionView.dataSource = self
//        myCollectionView.delegate = self
//        myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
//        myCollectionView.backgroundColor = UIColor.white
//        self.view.addSubview(myCollectionView)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 100
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
//        myCell.backgroundColor = UIColor.blue
//        return myCell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
//    {
//        print("User tapped on item \(indexPath.row)")
//    }
//
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//}
