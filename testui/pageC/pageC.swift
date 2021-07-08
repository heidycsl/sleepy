//
//  pageC.swift
//  testui
//
//  Created by user on 30/6/2021.
//
import Foundation
import UIKit
import SnapKit


class pageC: UIViewController {
    
    
    lazy var tvContainer:UIView? = {
        tvContainer = UIView()
        return tvContainer
    }()
    
    lazy var tv:UITableView? = {
//        tv = UITableView(frame: self.view.frame, style: UITableView.Style.grouped)
        
        let tv = UITableView(frame: .zero, style: UITableView.Style.grouped)
        tv.estimatedRowHeight = 50// to save the time of loading when scrolling
        tv.rowHeight = UITableView.automaticDimension// default value
        tv.alwaysBounceVertical = false //default
        tv.scrollsToTop = true // if tap on the status will go back to top
//
        tv.translatesAutoresizingMaskIntoConstraints = false// do not have autolayout
        tv.separatorInset = UIEdgeInsets(top: 0, left:70, bottom: 0, right: 10)//條線嘅長度同位置
//        tv.separatorStyle = .none// hidden the separatorline
        tv.register(UINib(nibName: "c1cell", bundle: nil), forCellReuseIdentifier: "c1cell")
        
        tv.register(UINib(nibName: "c2cell", bundle: nil), forCellReuseIdentifier: "c2cell")


        return tv
        
    }()
    lazy var dataSource: [String] = ["🐰", "禿子", "鷹醬", "毛熊", "棒子", "🐔","高盧雞", "🐶", "🐫", "沙某", "河馬","dhfiks","eee"]
    lazy var cat: [CatModal] = [
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat1")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat2")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat3")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat4")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/5/6",UIImage(named: "cat5")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat6")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat7")!),
        CatModal("🐶", "🐫", "2021/9/3",UIImage(named: "cat8")!),
        CatModal("🐰", "What the Fuck?", "2020/3/6",UIImage(named: "cat9")!),
        CatModal("skfjgnsk.fmglkbhsjnlfgkbsnlgyfjkuhgjfhdgfgjfhdgxfhjfhgjgfhgfjgfdhjyghtfrgdfdfhtgjyhukjifdxghjfdgfk", "skfbkjsbfbgsnfdjgnksjdbfghkjsbfghsnfdgsfgjfhdgfhjgfcdxghjgfchjksfzdxgchvjbknszfdgxchjkawfsdgrkdsfkuzsfghjknsrxfghjrdxfghjknfxdghjk",  "2021/15/16",UIImage(named: "cat10")!),
       



    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()

        // Do any additional setup after loading the view.
    }
    
    func initUI(){
        
        self.view.backgroundColor = .purple
        setupContainer()
        setupTV()
        stupNav()
       
    }
    
    func stupNav(){
        self.title = "well"
    }
    func setupContainer(){
        self.view.addSubview(tvContainer!)
        self.tvContainer?.snp.makeConstraints{(make) -> Void in
          
            make.top.equalTo(view.safeArea.top)
            make.right.equalTo(0)
            make.left.equalTo(0)
            make.bottom.equalTo(0)
            
        }
    }
    
    func setupTV(){
      
        self.tvContainer!.addSubview(self.tv!)
        
        self.tv?.snp.makeConstraints{(make) -> Void in
//
            make.right.equalTo(0)
            make.left.equalTo(0)
            make.top.equalTo(0)
            make.bottom.equalTo(0)
            
          

        }
      
     
        self.tv?.dataSource = self
        self.tv?.delegate = self
//        tv?.register(UINib(nibName: "c1cell", bundle: nil), forCellReuseIdentifier: "c1cell")
//
//        tv?.register(UINib(nibName: "c2cell", bundle: nil), forCellReuseIdentifier: "c2cell")
//
    }
    
    
}



extension pageC: UITableViewDelegate, UITableViewDataSource{

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            
            return dataSource.count
            
        }
        else
            {
                return cat.count
                
            }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return c1cell.Height
        }
        else
        {
            return c2cell.height
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
          let cell = tableView.dequeueReusableCell(withIdentifier: "c1cell",for: indexPath) as! c1cell
            let item = self.dataSource[indexPath.row]
            cell.setContent(str: item)
            return cell
        }
        else {
            
        let cell = tableView.dequeueReusableCell(withIdentifier: "c2cell",for: indexPath) as! c2cell
        let item = self.cat[indexPath.row]
        cell.setContent(modal: item)
            return cell}
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        header.backgroundColor = .brown
        let lblheader = UILabel(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.width, height: 20))
        if section == 0{
        lblheader.textColor = .white
        lblheader.text = "Just User"
        header.addSubview(lblheader)
            return header}
        else{
            lblheader.textColor = .white
            lblheader.text = "Cute Cute cat"
            header.addSubview(lblheader)
                return header
            
        }
    }
    
    func  tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = UIView()
        footer.backgroundColor = .brown
        let lblfooter = UILabel(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.width, height: 20))
        
        if section == 0{
            lblfooter.textColor = .white
            lblfooter.text = "end~"
            
        }
        else{
        lblfooter.textColor = .white
        lblfooter.text = "meow"
       }
        footer.addSubview(lblfooter)
            return footer
        
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
    
    
}
