//
//  ViewController.swift
//  dateCalculator
//
//  Created by 신승아 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttonCollection: [UIImageView]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateImageDesign()
    }

    // 이미지 디자인
    func dateImageDesign() {
        for item in buttonCollection {
            item.layer.cornerRadius = 20
        }
    }
    
}

