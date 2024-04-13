//
//  ViewController.swift
//  about_Uikit_layout
//
//  Created by 健太郎 on 2024/03/12.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel()
        label.frame = CGRect(x: view.frame.origin.x + 50,
                             y: 50,
                             width: view.frame.width - 100,
                             height: 100)
        view.addSubview(label)
        
        
        let button = UIButton()
        button.frame = CGRect(x: label.frame.maxX + 10,
                              y: label.frame.maxY + 30,
                              width: 30,
                              height: 100)
        view.addSubview(button)
    }
}

