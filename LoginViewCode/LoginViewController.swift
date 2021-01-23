//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Thiago Oliveira on 22/01/21.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    private lazy var imageView: UIImageView = { return UIImageView(frame: .zero) }()
    private lazy var loginLabel: UILabel = { return UILabel(frame: .zero) }()
    private lazy var loginTextField: UITextField = { return UITextField(frame: .zero) }()
    private lazy var passwordLabel: UILabel = { return UILabel(frame: .zero) }()
    private lazy var passwordTextField: UITextField = { return UITextField(frame: .zero) }()
    private lazy var enterButton: UIButton = { return UIButton(frame: .zero) }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login Demo"
        view.backgroundColor = .white
        applyViewCode()
    }
}

extension LoginViewController: ViewCodeConfiguration {
    func buildHierarchy() {
        view.addSubview(imageView)
        view.addSubview(loginLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(enterButton)
    }
    
    func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(140)
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(150)
        }
        
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(25)
            make.centerX.equalTo(imageView.snp.centerX)
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        
        loginTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(25)
            make.centerX.equalTo(loginLabel.snp.centerX)
            make.width.equalTo(300)
            make.height.equalTo(28)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(loginTextField.snp.bottom).offset(20)
            make.centerX.equalTo(loginTextField.snp.centerX)
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(5)
            make.centerX.equalTo(passwordLabel.snp.centerX)
            make.width.equalTo(300)
            make.height.equalTo(28)
        }
        
        enterButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(20)
            make.centerX.equalTo(passwordTextField.snp.centerX)
            make.width.equalTo(80)
            make.height.equalTo(50)
        }
    }
    
    func configureViews() {
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "swift-symbol")
        
        loginLabel.text = "Login"
        loginLabel.textAlignment = .left
        
        loginTextField.backgroundColor = .init(red: 238, green: 238, blue: 238, alpha: 0.2)
        loginTextField.layer.borderWidth = 1
        loginTextField.layer.borderColor = UIColor.black.cgColor
        loginTextField.layer.cornerRadius = 5
        loginTextField.placeholder = " Eg. Your login here"
        loginTextField.textAlignment = .left
        loginTextField.keyboardType = .default
        
        passwordLabel.text = "Password"
        passwordLabel.textAlignment = .left
        
        passwordTextField.backgroundColor = .init(red: 238, green: 238, blue: 238, alpha: 0.2)
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.black.cgColor
        passwordTextField.layer.cornerRadius = 5
        passwordTextField.placeholder = " Password"
        passwordTextField.textAlignment = .left
        passwordTextField.keyboardType = .numberPad
        
        enterButton.layer.cornerRadius = 2
        enterButton.setTitle("SignUp", for: .normal)
        enterButton.backgroundColor = .systemBlue
        enterButton.setTitleColor(.white, for: .normal)
        enterButton.addTarget(self, action: #selector(self.enterButtonClicked), for: .touchUpInside)
    }
    
    @objc
    private func enterButtonClicked() {
        print("Enter")
    }
}
