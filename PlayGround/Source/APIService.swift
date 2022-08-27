//
//  APIService.swift
//  PlayGround
//
//  Created by 장석우 on 2022/08/16.
//

import UIKit
class APIService{
    
    static let shared = APIService()
    private init(){}
    
    func getProduct(page: Int, completion: @escaping ([ProductData])->Void) {
        
        DispatchQueue.global().async {
            sleep(1)
            print("아무튼 통신.")
            DispatchQueue.main.async {
                
                completion(
                    [
                        ProductData(title: "AirForce 1", image: UIImage(named: "airForce")!),
                        ProductData(title: "AirForce 1", image: UIImage(named: "airForce")!),
                        ProductData(title: "AirForce 1", image: UIImage(named: "airForce")!),
                        ProductData(title: "AirForce 1", image: UIImage(named: "airForce")!),
                        ProductData(title: "AirForce 1", image: UIImage(named: "airForce")!),
                        ProductData(title: "AirForce 1", image: UIImage(named: "airForce")!),
                       
                    ]
                )
            }
            
        }
       
                   
    }
    
}

