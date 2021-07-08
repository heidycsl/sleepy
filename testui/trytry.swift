//
//  trytry.swift
//  testui
//
//  Created by user on 7/7/2021.
//

import UIKit

class trytry: UIViewController {
    
    lazy var dataSource: [String] = ["🐰", "禿子", "鷹醬", "毛熊", "棒子", "🐔","高盧雞", "🐶", "🐫", "沙某", "河馬"]
    
    lazy var Msgs: [MsgModal] = [
        MsgModal("🐰", "What the Fuck?", "2020/3/6"),
        MsgModal("🐔", "What is up?",  "2021/5/6"),
        MsgModal("🐶", "🐫", "2021/9/3")
    ]
    
    
    lazy var tv: UITableView? = {
        let tv = UITableView(frame: .zero, style: .grouped)
        return tv
    
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
        view.backgroundColor = .gray
    }
    
    func initUI(){
        
        setuptv()
    }
    
    func setuptv(){
        
        self.view.addSubview(tv!)
        
        self.tv!.snp.makeConstraints{(make) -> Void in
            make.left.equalTo(view.safeArea.left)
            make.top.equalTo(view.safeArea.top)
            make.right.equalTo(view.safeArea.right)
            make.bottom.equalTo(view.safeArea.bottom)
            
            
        }
        
        
        self.tv?.dataSource = self
        self.tv?.delegate = self
        self.tv?.register(UINib(nibName: "helpcell", bundle: nil), forCellReuseIdentifier: "helpcell")
        self.tv?.register(UINib(nibName: "AnimalCell", bundle: nil), forCellReuseIdentifier: "AnimalCell")
        
        self.tv?.register(UINib(nibName: "MsgCell", bundle: nil), forCellReuseIdentifier: "MsgCell")
    }


  

}
extension trytry: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return dataSource.count
        case 1:
            return 1
        case 2:
            return Msgs.count
        default:
            return 1
        }
       
    }
    
    func  tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let section = indexPath.section
        switch section {
        case 0:
            return AnimalCell.Height
        case 1:
            return 100
        case 2:
            return MsgCell.Height
        default:
            return 100
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        switch section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as! AnimalCell
            let item = dataSource[indexPath.row]
            cell.setContent(str: "\(item)")
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "helpcell", for: indexPath) as! helpcell
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MsgCell", for: indexPath) as! MsgCell
            let item = Msgs[indexPath.row]
            cell.setContent(modal: item)
            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "helpcell", for: indexPath) as! helpcell
            return cell
        }
        
      
        
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        header.backgroundColor = .brown
        let lblheader = UILabel(frame: CGRect(x: 20, y: 0, width: UIScreen.main.bounds.width, height: 30))
        lblheader.text = "list\(section+1)"
        header.addSubview(lblheader)
        return header
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    
    
    
    
}
