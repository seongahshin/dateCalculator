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
    
    // 상단 레이블 컬렉션
    @IBOutlet var LabelUpCollection: [UILabel]!
    
    // 중간 레이블 컬렉션
    @IBOutlet var LabelMiddleCollection: [UILabel]!
    
    
    // 상단 레이블 선언
    @IBOutlet weak var firstLabelUp: UILabel!
    @IBOutlet weak var secondLabelUp: UILabel!
    @IBOutlet weak var thirdLabelUp: UILabel!
    @IBOutlet weak var fourthLabelUp: UILabel!
    
    // 중간 레이블 선언
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateImageDesign()
        dateImageDesign()
        LabelDesign()
        LabelMiddleDesign()
    }

    // 이미지 디자인
    func dateImageDesign() {
        for item in buttonCollection {
            item.layer.cornerRadius = 20
        }
    }
    
    // 상단 레이블 디자인
    func LabelDesign() {
        for item in LabelUpCollection {
            item.textColor = .white
            item.font = item.font.withSize(10)
        }
        
        firstLabelUp.text = "D-100"
        secondLabelUp.text = "D-200"
        thirdLabelUp.text = "D-300"
        fourthLabelUp.text = "D-400"
    }
    
    // 중간 레이블 디자인
    func LabelMiddleDesign() {
        for item in LabelMiddleCollection {
            item.textColor = .white
            item.font = item.font.withSize(15)
        }
    }
    // 데이트픽커 버전별 분기처리
    func datePickerDesign() {
        
        if #available(iOS 14.0, *) {
            DatePicker.preferredDatePickerStyle = .inline
        } else {
            DatePicker.preferredDatePickerStyle = .wheels
        }
        
    }
    
    // 일정 날짜 뒤 레이블에 뜨는 기능
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy년 MM월 dd일"
        let hundred = datePickerView.date.addingTimeInterval(8640000)
        let twoHundred = datePickerView.date.addingTimeInterval(17280000)
        let threeHundred = datePickerView.date.addingTimeInterval(25920000)
        let fourHundred = datePickerView.date.addingTimeInterval(34560000)
        firstLabel.text = formatter.string(from: hundred)
        secondLabel.text = formatter.string(from: twoHundred)
        thirdLabel.text = formatter.string(from: threeHundred)
        fourthLabel.text = formatter.string(from: fourHundred)
        
    }
}

