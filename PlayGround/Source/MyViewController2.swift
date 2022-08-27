//
//  MyViewController2.swift
//  PlayGround
//
//  Created by 장석우 on 2022/08/15.
//

import Foundation
import UIKit

class MyViewController2 : UIViewController{
    
    //MARK: - IBOutlet
    
    @IBOutlet weak var mintView: UIView!
    
    @IBOutlet weak var ornageBtn: UIButton!
    //MARK: - Properties
    
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🍓\(#function)🍓")
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("🍓\(#function)🍓")
        //print("\(mintView.frame.size.height)\n")
        
        
    }
   
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("🍓🍓\(#function)🍓🍓")
       
        //print("\(mintView.frame.size.height)\n")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("🍓🍓\(#function)🍓🍓")
        //mintView.frame.size.height = 400
        //print("\(mintView.frame.size.height)\n")
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\n🍓\(#function)🍓")
        //print("\(mintView.frame.size.height)\n")
        
       
    }
    //MARK: - Custom Method
    
    //MARK: - IBAction
    
    @IBAction func btnPressed(_ sender: Any) {
        //view.setNeedsLayout()
    }
}

