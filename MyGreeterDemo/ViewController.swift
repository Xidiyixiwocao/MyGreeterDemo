//
//  ViewController.swift
//  MyGreeterDemo
//
//  Created by 许远备 on 2022/7/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let greet:MyGreeterClient = MyGreeterClient()
        let str = greet.greet()
        print(str)
        // Do any additional setup after loading the view.
    }


}

