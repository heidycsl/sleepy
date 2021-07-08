//
//  pageA.swift
//  testui
//
//  Created by user on 8/6/2021.
//

import UIKit

//enum PageAsectionType {
//    case sec0(rowType: [])
//}
//
//enum PageARowType {
//    case animal
//    case msg
//
//}

class pageA: UIViewController {
    
    @IBOutlet weak var tv: UITableView!
    
    lazy var dataSource: [String] = ["🐰", "禿子", "鷹醬", "毛熊", "棒子", "🐔","高盧雞", "🐶", "🐫", "沙某", "河馬"]
    
    lazy var Msgs: [MsgModal] = [
        MsgModal("🐰", "What the Fuck?", "2020/3/6"),
        MsgModal("🐔", "What is up?",  "2021/5/6"),
        MsgModal("🐶", "🐫", "2021/9/3")
    ]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        
        
    }
    
    
    @objc func BackAction()-> Void{
        self.dismiss(animated: true, completion: nil)
    }
    
    func initUI(){
        
        setupNav()
        setupTV()
        
    }
    
    func setupNav(){
        
        self.title = "animal list"
        let leftbtn = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(BackAction))
        //          self.navigationController?.navigationBar.topItem?.backBarButtonItem = leftbtn
        self.navigationController?.navigationItem.setLeftBarButton(leftbtn, animated: true)
        self.navigationItem.backBarButtonItem = leftbtn
        
        
    }
    
    func setupTV(){
        
        self.tv.delegate = self //listener
        self.tv.dataSource = self
        self.tv.register(UINib(nibName: "AnimalCell", bundle: nil), forCellReuseIdentifier: "AnimalCell")
        
        self.tv.register(UINib(nibName: "MsgCell", bundle: nil), forCellReuseIdentifier: "MsgCell")
        
        
    }
}

// MARK: -- UITableView
extension pageA: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return dataSource.count
            
        }
        
        return Msgs.count
    }
    
    
    //MARK: init cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as! AnimalCell
            let name = self.dataSource[indexPath.row]
            cell.setContent(str: "Section: \(indexPath.section), Row: \(indexPath.row): \(name)")
            return cell
            
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "MsgCell", for: indexPath) as! MsgCell
            let item = self.Msgs[indexPath.row]
            cell.setContent(modal: item)
            return cell
            
        }
        
    }
    
    //cell click action
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0
        {
            print("Section: \(indexPath.section), Row: \(indexPath.row)")
            
        }
        else{
            
            //跳page
            let item = self.Msgs[indexPath.row]
            let vc = MsgPage(modal: item)
//            self.present(vc, animated: true, completion: nil)
            self.navigationController?.pushViewController(vc, animated:true)
        }
    }
    
    
    //height of each row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            
            return AnimalCell.Height
            
        }
        else {
            
            return MsgCell.Height
        }
        
    }
    
    // header
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let header = UIView()
        header.backgroundColor = .orange
        let lbltitle = UILabel(frame: CGRect(x: 20, y: 0, width: UIScreen.main.bounds.width, height: 50))
        
        lbltitle.text = "list \(section+1)"
        header.addSubview(lbltitle)
        return header
        
    }
    
    //header height
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 50
        
    }
    
    //footer
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let footer = UIView()
        footer.backgroundColor = .orange
        let lbltitle = UILabel(frame: CGRect(x: 20, y: 0, width: UIScreen.main.bounds.width, height: 50))
        
        lbltitle.text = "end of list \(section+1)"
        
        footer.addSubview(lbltitle)
        return footer
        
    }
    
    //footer height
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 50
        
    }
    
    
    
}
