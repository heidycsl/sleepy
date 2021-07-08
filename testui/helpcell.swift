//
//  helpcell.swift
//  testui
//
//  Created by user on 7/7/2021.
//

import UIKit

class helpcell: UITableViewCell {
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
    
    let collectionView: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.minimumLineSpacing = 10
            layout.scrollDirection = .horizontal
        
            let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
            cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = .white
            return cv
        }()
    override func awakeFromNib() {
        super.awakeFromNib()
        initUI()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func initUI(){
        setCV()
    }
    func setCV(){
        self.contentView.addSubview(collectionView)
        self.collectionView.snp.makeConstraints{(make) -> Void in
            make.right.equalTo(contentView.safeArea.right)
            make.top.bottom.left.equalTo(0)
        }
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "PicCell", bundle: nil), forCellWithReuseIdentifier: "PicCell")
        
     
    }
    
    
}
extension helpcell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
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
        

    
    
    
    
}
