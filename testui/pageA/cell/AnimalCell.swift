//
//  AnimalCell.swift
//  testui
//
//  Created by user on 9/6/2021.
//

import UIKit

class AnimalCell: UITableViewCell {

    @IBOutlet weak var lblAnimal: UILabel!
    static let Height: CGFloat = 50
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initUI()
    }

    func  initUI(){
        self.lblAnimal.font = .boldSystemFont(ofSize: 20)
        
        
    }
    
    func setContent(str: String){
        self.lblAnimal.text = str
        
        
    }
        
}
