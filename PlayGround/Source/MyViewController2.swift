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
    
    //MARK: - Properties
    
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🍓\(#function)🍓")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("🍓\(#function)🍓")
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\n🍓\(#function)🍓")
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("\n🍓🍓\(#function)🍓🍓")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("🍓🍓\(#function)🍓🍓")
    }
    
    //MARK: - Custom Method
    
    //MARK: - IBAction
    
}

