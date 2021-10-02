//
//  TableCell.swift
//  Project2
//
//  Created by 이건준 on 2021/10/02.
//

import UIKit

class TableCell:UITableViewCell{
    
    var item:String?{
        didSet{
            self.cellLabel.text = item
        }
    }
    
    lazy var cellLabel:UILabel={
       let label = UILabel()
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureComponents(){
        self.addSubview(cellLabel)
        cellLabel.translatesAutoresizingMaskIntoConstraints = false
        cellLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        cellLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
}
