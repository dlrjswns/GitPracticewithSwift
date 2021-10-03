//
//  CollectionHeaderCell.swift
//  Project2
//
//  Created by 이건준 on 2021/10/04.
//

import UIKit

class CollectionHeaderCell:UICollectionReusableView{
    
    lazy var label:UILabel={
     let label = UILabel()
        label.text = "Header"
        label.font = .italicSystemFont(ofSize: 40)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(){
        backgroundColor = .systemBackground
        
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
