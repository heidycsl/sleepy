//
//  TransferPageViewController.swift
//  testui
//
//  Created by user on 10/6/2021.
//

import UIKit

class TransferPageViewController: UIViewController {

    @IBOutlet weak var userimg: UIImageView!
    @IBOutlet weak var lbluser: UILabel!
    
    var modal: descripmodal?
    
    convenience init(modal: descripmodal ){
        
        self.init()
        self.modal = modal
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContent()
        
    }
    
    func setupContent(){
        if let modal = self.modal{
            
            self.userimg.image = modal.img
            self.lbluser.text = modal.name
        }
    }

  

}
