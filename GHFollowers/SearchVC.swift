//
//  SearchVC.swift
//  GHFollowers
//
//  Created by Zohra Guliyeva  on 18.04.24.
//

import UIKit

class SearchVC: UIViewController {
    
    let logoImage =  UIImageView()
    let userNameTextfield = GFTextField()
    let callToAcrionButton =  GFButton(backGroundColor: .systemGreen , title: "Get Followers ")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupNavigationBar()
        configureLogoImage()
        configureTextField()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        
    }
    
    func configureLogoImage() {
        view.addSubview(logoImage)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.image = UIImage(named: "gh-logo")!
//        logoImage.backgroundColor = .gray
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.heightAnchor.constraint(equalToConstant: 200),
            logoImage.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    func configureTextField() {
        view.addSubview(userNameTextfield)
        userNameTextfield.translatesAutoresizingMaskIntoConstraints = false
//        userNameTextfield.backgroundColor = .yellow
        
        NSLayoutConstraint.activate([
            userNameTextfield.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 48),
            userNameTextfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            userNameTextfield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            userNameTextfield.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}


