//
//  FirstTableViewCell.swift
//  PlayGround
//
//  Created by 장석우 on 2022/06/24.
//

import UIKit


protocol SwitchOnDelegate{
    func switchPressed(_ isOn : Bool, index : Int)
}

class FirstTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var toggleSwitch: UISwitch!
    
    var cellIndex : Int = -1
    var delegate : SwitchOnDelegate?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("cell \(cellIndex) - 🍎awakeFromNib()")
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        print("cell \(cellIndex) - 🍏prepreForReuse()")
        
        toggleSwitch.isOn = true
    }

    @IBAction func switchPressed(_ sender: UISwitch) {
        delegate?.switchPressed(sender.isOn, index: cellIndex)
    }
}
