//
//  MyViewController2.swift
//  PlayGround
//
//  Created by ģ„ģģ° on 2022/08/15.
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
        print("š\(#function)š")
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("š\(#function)š")
        //print("\(mintView.frame.size.height)\n")
        
        
    }
   
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("šš\(#function)šš")
       
        //print("\(mintView.frame.size.height)\n")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("šš\(#function)šš")
        //mintView.frame.size.height = 400
        //print("\(mintView.frame.size.height)\n")
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\nš\(#function)š")
        //print("\(mintView.frame.size.height)\n")
        
       
    }
    //MARK: - Custom Method
    
    //MARK: - IBAction
    
    @IBAction func btnPressed(_ sender: Any) {
        //view.setNeedsLayout()
    }
}

