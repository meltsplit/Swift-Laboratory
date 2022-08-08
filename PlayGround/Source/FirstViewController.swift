//
//  ViewController.swift
//  PlayGround
//
//  Created by 장석우 on 2022/06/20.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var cellData : [CellModel] = [
                                    CellModel(text: "cell 0"),
                                    CellModel(text: "cell 1"),
                                    CellModel(text: "cell 2"),
                                    CellModel(text: "cell 3"),
                                    CellModel(text: "cell 4"),
                                    CellModel(text: "cell 5"),
                                    CellModel(text: "cell 6"),
                                    CellModel(text: "cell 7"),
                                    CellModel(text: "cell 8"),
                                    CellModel(text: "cell 9"),
                                    CellModel(text: "cell 10"),
                                    CellModel(text: "cell 11"),
                                    CellModel(text: "cell 12"),
                                    CellModel(text: "cell 13"),
                                    CellModel(text: "cell 14"),
                                    CellModel(text: "cell 15"),
                                    CellModel(text: "cell 16"),
                                    CellModel(text: "cell 17"),
                                    CellModel(text: "cell 18"),
                                    CellModel(text: "cell 19")
    
                                    ]
    
    let data = [
                "cell 0",  
                "cell 1",
                "cell 2",
                "cell 3",
                "cell 4",
                "cell 5",
                "cell 6",
                "cell 7",
                "cell 8",
                "cell 9",
                "cell 10",
                "cell 11",
                "cell 12",
                "cell 13",
                "cell 14",
                "cell 15",
                "cell 16",
                "cell 17",
                "cell 18",
                "cell 19"
    
    ]
    
    
    //MARK: - Properties
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.layer.cornerRadius = 10
    }


    @IBAction func squareBtnPressed(_ sender: UIButton) {
        
        
    }
    

}




extension FirstViewController : UITableViewDelegate,UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FirstTableViewCell
        
        cell.delegate = self
        cell.cellLabel.text = cellData[indexPath.row].text
        cell.toggleSwitch.isOn = cellData[indexPath.row].isSwitchOn
        cell.cellIndex = Int(indexPath.row)
        
        print("cell for row at : \(indexPath.row) \n")
        
        return cell
    }
}

extension FirstViewController : SwitchOnDelegate{
    
    func switchPressed(_ isOn: Bool, index: Int) {
        
        cellData[index].isSwitchOn = isOn
    }
    
    
}





