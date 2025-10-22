//
//  ViewController.swift
//  TrainingSessions
//
//  Created by Yakov on 21.10.2025.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    //UILabel
    private var UILabelLogin: UILabel = {
        $0.text = "Login"
        return $0
    }(UILabel())
    
    private var UILabelPassword: UILabel = {
        $0.text = "Password"
        return $0
    }(UILabel())
    
    private var UILabelError: UILabel = {
        $0.text = "Error message"
        $0.textColor = .red
        return $0
    }(UILabel())
    
    //UITextField
    private var UITextFieldLogin: UITextField  = {
        $0.placeholder = "imail"
        $0.backgroundColor = .lightGray
        $0.layer.cornerRadius = 24
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UITextField())
    
    private var UITextFieldPassword: UITextField  = {
        $0.placeholder = "password"
        $0.backgroundColor = .lightGray
        $0.layer.cornerRadius = 24
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UITextField())
    
    //UIButton
    private var UIButtonRegister: UIButton = {
        $0.setTitle("Register", for: .normal)
        $0.backgroundColor = .lightGray
        $0.layer.cornerRadius = 24
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIButton())
    
    private var UIButtonLogin: UIButton = {
        $0.setTitle("Login", for: .normal)
        $0.backgroundColor = .lightGray
        $0.layer.cornerRadius = 24
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIButton())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
        
    }
}


extension ViewController {
   
    private func setupViews() {
        view.addSubview(UILabelLogin)
        view.addSubview(UILabelPassword)
        view.addSubview(UILabelError)
        view.addSubview(UITextFieldLogin)
        view.addSubview(UITextFieldPassword)
        view.addSubview(UIButtonRegister)
        view.addSubview(UIButtonLogin)
    }
    
    private func setupConstraints() {
        UILabelLogin.snp.makeConstraints { make in
            make.top.equalTo(view).inset(224)
            make.left.equalTo(view).inset(60)
            
        }
        
        UITextFieldLogin.snp.makeConstraints { make in
            make.top.equalTo(UILabelLogin.snp.bottom).offset(12)
            make.left.equalTo(view).inset(52)
            make.right.equalTo(view).inset(48)
            make.height.equalTo(62)
        }
        
        UILabelPassword.snp.makeConstraints { make in
            make.top.equalTo(UITextFieldLogin.snp.bottom).offset(7)
            make.left.equalTo(view).inset(62)
            
        }
        
        UITextFieldPassword.snp.makeConstraints { make in
            make.top.equalTo(UILabelPassword.snp.bottom).offset(12)
            make.left.equalTo(view).inset(52)
            make.right.equalTo(view).inset(48)
            make.height.equalTo(62)
        }
        
        UIButtonRegister.snp.makeConstraints { make in
            make.top.equalTo(UITextFieldPassword.snp.bottom).offset(56)
            make.left.right.equalTo(view).inset(68)
            make.height.equalTo(54)
        }
        
        UIButtonLogin.snp.makeConstraints { make in
            make.top.equalTo(UIButtonRegister.snp.bottom).offset(20)
            make.left.right.equalTo(view).inset(68)
            make.height.equalTo(54)
        }
        
        UILabelError.snp.makeConstraints { make in
            make.bottom.equalTo(view.snp.bottom).inset(112)
            make.centerX.equalTo(view)
        }
        
    }
}
