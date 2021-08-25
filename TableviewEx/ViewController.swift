//
//  ViewController.swift
//  TableviewEx
//
//  Created by Jeongguk Kim on 2021/08/25.
//

import UIKit

class ViewController: UIViewController {

    var sectionHeader = ["", "2 section header"]
    var sectionFooter = ["1 section footer", "2 section footer"]
    var cellDataSource = ["1 cell", "2 cell", "3 cell"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}
extension ViewController: UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionHeader.count
    }

//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return sectionHeader[section]
//    }

//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//
//    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            return UIView(frame: CGRect(x:0, y:0, width: 0, height: 0))
        }
        let view = UIView(frame: CGRect(x:0, y:0, width: tableView.frame.width, height: tableView.frame.height))
        view.backgroundColor = .clear
        let label = UILabel(frame: CGRect(x: 15, y: 0, width: view.frame.width, height: 40))
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.text = "친구 40"
        label.textColor = .systemGray
        
        view.addSubview(label)
        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        return 40
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {

            return 1
        }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        }
        return cellDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = cellDataSource[indexPath.row]
        
        return cell
    }
    
    
}
