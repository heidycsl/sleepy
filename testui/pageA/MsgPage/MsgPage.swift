//
//  MsgPage.swift
//  testui
//
//  Created by user on 9/6/2021.
//

import UIKit

class MsgPage: UIViewController {
    @IBOutlet weak var dateContainer: UIView!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblMsg: UILabel!
    
    var modal: MsgModal?
    
    //information of the previous page to tranfer to the new page
    convenience init(modal: MsgModal) {
        
        self.init()
        self.modal = modal
//        self.init(nibName: "MsgPage", bundle: nil)
       
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationItem.setHidesBackButton(true, animated: true)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "to Page B", style: .done, target: self, action: #selector(addTapped))
        setupUI()
        // Do any additional setup after loading the view.
    }


    func setupUI(){
        self.dateContainer.layer.cornerRadius = 10
        if let modal = self.modal{
            
            self.title = modal.name
            self.lblDate.text = modal.date
            self.lblMsg.text = modal.msg
            
        }
        
    }
    @IBAction func addTapped(){
        let vc = pageB()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }

}
