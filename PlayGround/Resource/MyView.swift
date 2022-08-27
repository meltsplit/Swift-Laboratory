//
//  UIView+.swift
//  PlayGround
//
//  Created by 장석우 on 2022/08/15.
//

import Foundation
import UIKit
class MyView :  UIView{
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        print("\n🥝\(self.restorationIdentifier!)🥝 - \(#function)")
    }
    
    override func setNeedsDisplay() {
        super.setNeedsDisplay()
       //print("🥝\(#function)🥝")
    }
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
        print("🥝\(self.restorationIdentifier!)🥝 - \(#function)")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if (self.restorationIdentifier == "MintView"){
            print("나는 민트뷰요~")
            self.frame.size.height = 20
        }
        print("🥝\(self.restorationIdentifier!)🥝 - \(#function)")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        //print("🥝🥝🥝\(#function)🥝🥝🥝")
    }
}

