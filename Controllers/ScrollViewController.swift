//
//  ScrollViewController.swift
//  Project2
//
//  Created by 이건준 on 2021/09/30.
//

import UIKit

class ScrollViewController:UIViewController{
    lazy var scrollView:UIScrollView={
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .systemBackground
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: 2000)
        return scrollView
        
    }()
    
    lazy var labelOne:UILabel={
       let label = UILabel()
        label.text="이건준"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureComponents()
    }
    
    //MARK: Configure
    func configureComponents(){
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        scrollView.addSubview(labelOne)
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        labelOne.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 30).isActive = true
        labelOne.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
    }
}
