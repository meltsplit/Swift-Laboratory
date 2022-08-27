//
//  MYCollectionView.swift
//  PlayGround
//
//  Created by 장석우 on 2022/08/17.
//

import UIKit
class MyCollectionView : UICollectionView{
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //print("MYCV - \(#function)")
        //self.frame.size.height = contentSize.height
        //print("🍉CollectionView🍉 - layoutSubviews(\(Int(contentSize.height)))")
    }
    
    func reloadData(completion: () -> ()) {
        super.reloadData()
        completion()
    }
}

