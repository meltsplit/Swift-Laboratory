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
        print("🥝\(#function)\n")
    }
    
    override func setNeedsDisplay() {
        super.setNeedsDisplay()
       // print("🥝\(#function)🥝")
    }
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
       // print("🥝\(#function)🥝")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //print("\n🥝🥝\(#function)🥝🥝")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        print("🥝🥝🥝\(#function)🥝🥝🥝")
    }
}

