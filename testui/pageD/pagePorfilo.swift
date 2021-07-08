//
//  pagePorfiloViewController.swift
//  testui
//
//  Created by user on 5/7/2021.
//

import UIKit
import SnapKit

// using scroll view for the information and the rotation of the phone

class pagePorfilo: UIViewController {
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
    
    
    lazy var contentview: UIView? = {
        let contentview = UIView()
        return contentview
    }()
    lazy var scrollView: UIScrollView? = {
        let scrollView = UIScrollView()
        return scrollView

    }()

  
    lazy var lblname: UILabel? = {
        let lblname = UILabel()
        lblname.numberOfLines = .zero
        
        return lblname
    }()
    lazy var lbltitle: UILabel? = {
        let lbltitle = UILabel()
        lbltitle.numberOfLines = .zero
        lbltitle.textAlignment = .center
        return lbltitle
        
    }()
    
    lazy var img: UIImageView? = {
        let img = UIImageView()
    return img
    
    }()
    
    
    lazy var cv: UICollectionView? = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsHorizontalScrollIndicator = false
        cv.backgroundColor = .white
        return cv
    }()
    
    var modal: CatModal?
    convenience init(modal: CatModal){
        self.init()
        self.modal = modal
       
    }
   

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
       
        setupUI()
        setContent()
    }


    func setupUI(){
        setupview()
        setupimg()
        setuplbl()
        setcv()
        
        



    }
    func setupview(){
        view.addSubview(scrollView!)
        scrollView?.snp.makeConstraints{(make) -> Void in
            make.edges.equalTo(view)
        }
        scrollView?.addSubview(contentview!)
        contentview!.snp.makeConstraints{(make) -> Void in
            make.top.bottom.equalTo(scrollView!)//to set as the scoll is in vertical direction
            make.left.equalTo(view.safeArea.left)
            make.right.equalTo(view.safeArea.right)
        }
        
    }
    func setupimg(){
        self.contentview?.addSubview(img!)
        img!.translatesAutoresizingMaskIntoConstraints = true
        img?.snp.makeConstraints{(make) -> Void in

            make.top.equalTo(contentview!).offset(20)
//            make.right.equalTo(view.safeArea.right)
//            make.left.equalTo(view.safeArea.left)
//            make.width.equalTo(UIScreen.main.bounds.height/2)
            make.height.equalTo(350)
            make.centerX.equalTo(contentview!)
            make.width.equalTo(350)



        }

    }
    func setuplbl(){

        self.contentview?.addSubview(lbltitle!)


        lbltitle?.snp.makeConstraints{(make) -> Void in
            make.topMargin.equalTo(img!.snp.bottom).offset(20)
//            make.centerX.equalTo(self.view)
            make.right.equalTo(-15)
            make.left.equalTo(15)

        }

        self.contentview?.addSubview(lblname!)

        lblname?.snp.makeConstraints{(make) -> Void in
            make.topMargin.equalTo(lbltitle!.snp.bottom).offset(20)
//            make.centerX.equalTo(self.view)
            make.right.equalTo(-15)
            make.left.equalTo(15)
//            make.height.equalTo(30)
           
        }

    }
    func setcv(){
        self.contentview?.addSubview(cv!)
        cv?.snp.makeConstraints{(make) -> Void in
            make.top.equalTo(lblname!.snp.bottom).offset(20)
            make.right.equalTo(view.safeArea.right)
            make.left.equalTo(view.safeArea.left)
            make.bottom.equalToSuperview()
            make.height.equalTo(100)
            
        }
        self.cv?.dataSource = self
        self.cv?.delegate = self
        self.cv?.register(UINib(nibName: "PicCell", bundle: nil), forCellWithReuseIdentifier: "PicCell")
        
    }
    
    func setContent(){
        if let modal = self.modal{
            self.lbltitle?.text = modal.name
            self.lblname?.text = modal.msg
            self.img?.image = modal.img

        }
    }
    
    
    
}

extension pagePorfilo: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cat.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PicCell", for: indexPath) as! PicCell
        let item = self.cat[indexPath.row]
        cell.setContent(modal: item)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return  CGSize(width: PicCell.width, height:PicCell.height)
        }
        
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)   {
        let item = cat[indexPath.row]
        let vc = pagePorfilo(modal: item)
        self.navigationController?.pushViewController(vc, animated:true)
        
    }
    

}

