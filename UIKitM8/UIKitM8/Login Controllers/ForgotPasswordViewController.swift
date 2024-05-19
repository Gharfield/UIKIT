//
//  ForgotPasswordViewController.swift
//  UIKitM8
//
//  Created by Gustaf Hallberg on 2024-05-19.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    // MARK: - UI Components
    
    private let headerView = AuthHeaderView(title: "Glömt Lösenord", subTitle: "Återställ Lösenord")
    
    private let EmailField = CustomTextField(fieldType: .email)
    
    private let resetPasswordButton = CustomButton(title: "Skicka iväg email", hasBackground: true, fontSize: .big)
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.resetPasswordButton.addTarget(self, action: #selector(didTapForgotPassword), for: .touchUpInside)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
        
    }
    // MARK: - UI Setup
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(headerView)
        self.view.addSubview(EmailField)
        self.view.addSubview(resetPasswordButton)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        EmailField.translatesAutoresizingMaskIntoConstraints = false
        resetPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.headerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.headerView.heightAnchor.constraint(equalToConstant: 230),
            
            self.EmailField.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 11),
            self.EmailField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.EmailField.heightAnchor.constraint(equalToConstant: 55),
            self.EmailField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.resetPasswordButton.topAnchor.constraint(equalTo: EmailField.bottomAnchor, constant: 22),
            self.resetPasswordButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.resetPasswordButton.heightAnchor.constraint(equalToConstant: 55),
            self.resetPasswordButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
        ])
    }
    // MARK: - Selectors
    
    @objc private func didTapForgotPassword() {
        guard let email = self.EmailField.text, !email.isEmpty else { return }
        //email validation
    }
}
