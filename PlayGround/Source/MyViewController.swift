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
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    //MARK: - Properties
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        stackView.removeArrangedSubview(orangeView)
//        orangeView.removeFromSuperview()
        
        orangeView.isHidden = true
        
    }
    
    
    //MARK: - Custom Method
    
    //MARK: - IBAction
    
}
