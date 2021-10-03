//
//  TableViewController.swift
//  Project2
//
//  Created by 이건준 on 2021/10/02.
//

import UIKit

private let reuseableIdentifier = "cell"

class TableViewController:UITableViewController{
    
    let items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK: Configure
    func configure(){
        tableView.register(TableCell.self, forCellReuseIdentifier: reuseableIdentifier)
    }
}

extension TableViewController{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseableIdentifier, for: indexPath)
        as! TableCell
        
        let item = self.items[indexPath.row]
        cell.item = item
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 3{
            return 200
        }else{
            return 100
        }
    }
}
