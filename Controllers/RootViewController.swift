//
//  RootViewController.swift
//  Project2
//
//  Created by 이건준 on 2021/09/29.
//

import UIKit

class RootViewController:UIViewController{
    lazy var titleLabel:UILabel = {
       let label = UILabel()
        label.text = "JunCoding"
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var subtitleLabel:UILabel = {
       let label = UILabel()
        label.text = "Login"
        return label
    }()
    
    lazy var idView:UIView = {
       let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.tertiarySystemGroupedBackground.cgColor
        view.layer.cornerRadius = 10
        
        view.addSubview(idtextField)
        idtextField.translatesAutoresizingMaskIntoConstraints = false
        idtextField.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        idtextField.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        idtextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        idtextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        return view
    }()
    
    lazy var idtextField:UITextField = {
        let txtField = UITextField()
        txtField.placeholder = "ID"
        return txtField
    }()
    
    lazy var pwtextField:UITextField = {
       let txtField = UITextField()
        txtField.placeholder = "PW"
        txtField.isSecureTextEntry = true
        return txtField
    }()
    
    lazy var pwView:UIView = {
       let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.tertiarySystemGroupedBackground.cgColor
        
        view.addSubview(pwtextField)
        pwtextField.translatesAutoresizingMaskIntoConstraints = false
        pwtextField.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        pwtextField.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        pwtextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        pwtextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        return view
    }()
    
    lazy var loginBtn:UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("로그인", for: .normal)
        button.backgroundColor = .systemGroupedBackground
        button.layer.borderWidth = 1
        button.addTarget(self, action: #selector(loginBtnAction), for: UIControl.Event.touchUpInside)
        return button
    }()
    
//    //MARK: Selector
    @objc func loginBtnAction(){
        navigationController?.pushViewController(ScrollViewController(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeComponents()
        hideKeyboardWhenTaped()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        if self.traitCollection.userInterfaceStyle == .dark{
            loginBtn.setTitleColor(.black, for: .normal)
            loginBtn.backgroundColor = .white
        }else{
            loginBtn.setTitleColor(.white, for: .normal)
            loginBtn.backgroundColor = .black
        }
    }
    
    func makeComponents(){
        view.backgroundColor = .systemBackground
        
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        
        view.addSubview(idView)
        idView.translatesAutoresizingMaskIntoConstraints = false
        idView.widthAnchor.constraint(equalToConstant: view.frame.width-40).isActive = true
        idView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        idView.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 30).isActive = true
        idView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(pwView)
        pwView.translatesAutoresizingMaskIntoConstraints = false
        pwView.widthAnchor.constraint(equalToConstant: view.frame.width-40).isActive = true
        pwView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        pwView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pwView.topAnchor.constraint(equalTo: idView.bottomAnchor, constant: 10).isActive = true
        
        view.addSubview(loginBtn)
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.topAnchor.constraint(equalTo: pwView.bottomAnchor, constant: 20).isActive = true
        loginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginBtn.widthAnchor.constraint(equalToConstant: view.frame.width-40).isActive = true
        loginBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
}
