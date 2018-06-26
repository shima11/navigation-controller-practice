//
//  ViewController.swift
//  navigation-controller-practice
//
//  Created by jinsei shima on 2018/06/26.
//  Copyright © 2018 jinsei shima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let header = UIView()
        header.backgroundColor = .darkGray
        header.frame = CGRect(x: 0, y: 0, width: 300, height: 100)
//        self.navigationController?.navigationItem.titleView = header
        self.navigationItem.titleView = header


    }


}

