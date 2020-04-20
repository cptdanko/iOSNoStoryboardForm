//
//  ViewController.swift
//  iOSUIInCode
//
//  Created by Bhuman Soni on 17/4/20.
//  Copyright © 2020 Bhuman Soni. All rights reserved.
//

    import UIKit

    class ViewController: UIViewController {

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            navigationItem.title = "UI In Code"
            let margins = view.layoutMarginsGuide
            createForm(margins: margins)
        }
        func createForm(margins:UILayoutGuide) {
            let usernameSV = getStackView()
            
            let usernameLbl = UILabel()
            usernameLbl.text = "Username"
            usernameLbl.textAlignment = .right
            usernameLbl.backgroundColor = .cyan
            usernameSV.addArrangedSubview(usernameLbl)
            
            let usernameTF = UITextField()
            usernameTF.placeholder = "type your username"
            usernameTF.textAlignment = .left
            
            usernameSV.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
            usernameSV.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
            usernameSV.topAnchor.constraint(equalTo: margins.topAnchor, constant: 40).isActive = true
            
            let emailSV = getStackView()
            
            let emailLbl = UILabel()
            emailLbl.text = "Email"
            emailLbl.textAlignment = .right
            emailLbl.backgroundColor = .cyan
            emailSV.addArrangedSubview(emailLbl)
            
            let emailTF = UITextField()
            emailTF.placeholder = "type your email"
            emailTF.textContentType = .emailAddress
            emailTF.textAlignment = .left
            emailSV.addArrangedSubview(emailTF)
            
            emailSV.topAnchor.constraint(equalTo: usernameSV.bottomAnchor, constant: 20).isActive = true
            emailSV.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
            emailSV.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
            
            let passwordSV = getStackView()
            let passwordLbl = UILabel()
            passwordLbl.text = "Password"
            passwordLbl.textAlignment = .right
            passwordLbl.backgroundColor = .cyan
            passwordSV.addArrangedSubview(passwordLbl)
            
            let passwordTF = UITextField()
            passwordTF.placeholder = "type your password"
            passwordTF.textAlignment = .left
            //since it's password, let's do the steps below
            passwordTF.textContentType = .password
            passwordTF.isSecureTextEntry = true
            passwordSV.addArrangedSubview(passwordTF)
            
            passwordSV.topAnchor.constraint(equalTo: emailSV.bottomAnchor, constant: 20).isActive = true
            passwordSV.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
            passwordSV.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
            
            let submitSV = getStackView()
            let btn = UIButton()
            btn.backgroundColor = .systemGreen
            btn.setTitle("Submit", for: .normal)
            btn.addTarget(self, action: #selector(submitForm), for: .touchUpInside)
            submitSV.addArrangedSubview(btn)
            
            submitSV.topAnchor.constraint(equalTo: passwordSV.bottomAnchor, constant: 20).isActive = true
            submitSV.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
            submitSV.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        }
        private func getStackView() -> UIStackView {
            let sv = UIStackView()
            sv.translatesAutoresizingMaskIntoConstraints = false
            sv.heightAnchor.constraint(equalToConstant: CGFloat(50)).isActive = true
            sv.axis = .horizontal
            sv.spacing = CGFloat(10)
            sv.distribution = .fillEqually
            view.addSubview(sv)
            return sv
        }
        @objc func submitForm() {
            print("submit form")
        }
    }

