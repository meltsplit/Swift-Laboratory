//
//  MyViewController.swift
//  PlayGround
//
//  Created by 장석우 on 2022/08/13.
//

import Foundation
import UIKit

class MyViewController : UIViewController{
    
    //MARK: - IBOutlet
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var collectionViewHeight: NSLayoutConstraint!
    
    //MARK: - Properties
    
    var count = 4

    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
       view.layoutIfNeeded()
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.collectionViewHeight.constant = self.myCollectionView.contentSize.height
        
    }
    
    //MARK: - IBAction
    
    @IBAction func btnPressed(_ sender: UIButton) {
        
        count += 2
        myCollectionView.reloadData()
        
    }
    
}

extension MyViewController : UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        return cell
    }
    
}

extension MyViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let width = (collectionView.frame.width - 10) / 2

        return CGSize(width: width, height: width * 1.4)

    }
}
