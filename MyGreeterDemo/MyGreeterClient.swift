//
//  MyGreeterClient.swift
//  MyGreeterDemo
//
//  Created by 许远备 on 2022/7/1.
//

import UIKit

class MyGreeterClient: NSObject {
    public func greet() -> String{
        let df = DateFormatter()
        df.dateFormat = "HH"
        let dateString = df.string(from: Date())
        let hour:Int? = Int(dateString)
        if let greethour = hour {
            if(greethour>6 && greethour<12){
                return "Good Morining"
            }else if(greethour>12&&greethour<18){
                return "Good AfterNoon"
            }else{
                return "Good Evening"
            }
        }else{
            return "GoodDay"
        }
    }
}
