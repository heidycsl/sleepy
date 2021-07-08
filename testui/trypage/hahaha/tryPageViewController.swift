//
//  tryPageViewController.swift
//  testui
//
//  Created by user on 10/6/2021.
//

import UIKit

class tryPageViewController: UIViewController {
    @IBOutlet weak var tv: UITableView!
    lazy var namename: [String] = ["🐰", "禿子", "鷹醬", "毛熊", "棒子", "🐔","高盧雞", "🐶", "🐫", "沙某", "河馬"]
    
    lazy var dataSource: [descripmodal] = [
        descripmodal("🐰", "禿子", "鷹醬",UIImage(named: "user")),
        descripmodal("🐶", "禿子", "鷹醬",UIImage(named: "user1")),
        descripmodal("🐔", "禿子", "鷹醬",UIImage(named: "user2"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        // Do any additional setup after loading the view.
    }


    func initUI()
    {
        setupNav()
        setupTV()
        
    }
    
    func setupNav(){
        
        self.title = "try"
    }
    
    func setupTV(){
        
        self.tv.delegate = self
        self.tv.dataSource = self
        self.tv.register(UINib(nibName: "TryCell", bundle: nil), forCellReuseIdentifier: "TryCell")
        self.tv.register(UINib(nibName: "AnimalCell", bundle: nil), forCellReuseIdentifier: "AnimalCell")
   
        
    }

}
extension tryPageViewController: UITableViewDelegate, UITableViewDataSource{
    
    //
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return dataSource.count
        }
        return namename.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
        let cell = tableView.dequeueReusableCell(withIdentifier: "TryCell", for: indexPath) as! TryCell
        let name = self.dataSource[indexPath.row]
        cell.setContent(modal: name)
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as! AnimalCell
            let name = self.namename[indexPath.row]
            cell.setContent(str: "Section: \(indexPath.section), Row: \(indexPath.row): \(name)")
            return cell
            
           
           
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TryCell.Height
    }
    
    //jump page
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = self.dataSource[indexPath.row]
        let vc = TransferPageViewController(modal: item)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    //header
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
         let header = UIView()
        header.backgroundColor = .cyan
        let lbltitle = UILabel(frame: CGRect(x: 20, y: 0, width: UIScreen.main.bounds.width, height: 50))
        
        lbltitle.text = "list"
        header.addSubview(lbltitle)
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    
}
