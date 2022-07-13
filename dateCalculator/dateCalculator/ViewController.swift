//
//  ViewController.swift
//  dateCalculator
//
//  Created by 신승아 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttonCollection: [UIImageView]!
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateImageDesign()
        dateImageDesign()
    }

    // 이미지 디자인
    func dateImageDesign() {
        for item in buttonCollection {
            item.layer.cornerRadius = 20
        }
    }
    
    func datePickerDesign() {
        
        if #available(iOS 14.0, *) {
            DatePicker.preferredDatePickerStyle = .inline
        } else {
            DatePicker.preferredDatePickerStyle = .wheels
        }
        
    }
}

