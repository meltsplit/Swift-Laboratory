//
//  MyViewController.swift
//  PlayGround
//
//  Created by 장석우 on 2022/08/13.
//

import Foundation
import UIKit
//import Snapkit

class MyViewController : UIViewController{
    
    //MARK: - IBOutlet
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myCollectionView: MyCollectionView!
    
    @IBOutlet weak var collectionViewHeight: NSLayoutConstraint!
    
    //MARK: - Properties
    var count = 4
    var page = 0
    
    var isLoading = false
    
    var productData : [ProductData] = []
    var isTrue = true
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(#function)")
        
        myScrollView.delegate = self
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        fetchProduct()
    }
    //MARK: - IBAction
    
    @IBAction func btnPressed(_ sender: UIButton) {
        print("버튼 누름")
        
        fetchProduct()
        
    }
    
    //MARK: - Custom Method
    
    private func fetchProduct(){
        
        isLoading = true
        page += 1
        
        APIService.shared.getProduct(page: page) { data in

            
            self.productData.append(contentsOf: data)
            print("현재 페이지: \(self.page) Cell 개수: \(self.productData.count)")
            
            self.myCollectionView.reloadData()
            
            DispatchQueue.main.async {
                self.collectionViewHeight.constant = self.myCollectionView.contentSize.height
                self.isLoading = false
            }
        }
        
    }
    
    private func resizeCollectionView(){
        myCollectionView.layoutIfNeeded()
        self.collectionViewHeight.constant = self.myCollectionView.contentSize.height
        
    }
    
}

extension MyViewController : UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("🍉reloadData() 실행")
        print("🍉\(#function)")
        return productData.count
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

extension MyViewController : UIScrollViewDelegate{
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if (scrollView.contentOffset.y >=  scrollView.contentSize.height - scrollView.frame.height){
            
            guard !isLoading else { return }
            
            print("--------스크롤이 바닥에 닿았습니다---------")
            fetchProduct()
            
        }
    }
}

