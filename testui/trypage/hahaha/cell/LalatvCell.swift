//
//  LalatvCell.swift
//  testui
//
//  Created by user on 16/6/2021.
//

import UIKit

class LalatvCell: UITableViewCell {

    @IBOutlet weak var cv: UICollectionView!
    var dataArr  = ["1","2","3","4","5"]
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initUI(){
        
    }
    
    func setupcv()
    {
        self.cv.dataSource = self
        self.cv.delegate = self
        self.cv.register(UINib(nibName: "LacvCell", bundle: nil), forCellWithReuseIdentifier: "LacvCell")
    }
    
}
extension LalatvCell:UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LacvCell", for: indexPath) as! LacvCell
        let name = self.dataArr[indexPath.row]
        cell.setContent(str: "\(name)")
        return cell
    }
    
    
}
