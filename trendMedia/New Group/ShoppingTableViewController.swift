//
//  ShoppingTableViewController.swift
//  trendMedia
//
//  Created by 신승아 on 2022/07/19.
//

import UIKit

class ShoppingTableViewController: UITableViewController {
    
    var list = ["그립톡", "사이다", "사과", "책"]
    
    @IBOutlet weak var searchTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }
    
   
    // Section
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Row
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    // Cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewCell") as! ShoppingTableViewCell

            cell.textLabel?.text = list[indexPath.row]
            cell.textLabel?.font = .boldSystemFont(ofSize: 18)
            cell.textLabel?.textAlignment = .center
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // 키보드 return 눌렀을 때 추가
    @IBAction func TextFieldReturn(_ sender: UITextField) {
        list.append(sender.text!)
        tableView.reloadData()
    }
    
    // 버튼 클릭했을 때 추가
    @IBAction func buttonClicked(_ sender: UIButton) {
        list.append(searchTextField.text!)
        tableView.reloadData()
    }
    
    // 삭제 기능
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // 배열 삭제 후 테이블뷰 갱신
            list.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    
    
    
    
    
}


