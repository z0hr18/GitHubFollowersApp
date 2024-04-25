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
    let callToActionButton =  GFButton(backGroundColor: .systemGreen , title: "Get Followers ")
    
    var isUsernamedEntered: Bool { return !userNameTextfield.text!.isEmpty  }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupNavigationBar()
        configureLogoImage()
        configureTextField()
        configureCallToActionButton()
        createDismissKeyboardTapGesture()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        
    }
    
    func createDismissKeyboardTapGesture() {//bu function keyboard acildiqdan sonra viewya click edende onun dismiss edilmesidir.
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
   @objc func pushFollowerListVC() {
       guard isUsernamedEntered else {
           presenatGFAlertOnMainThread(title: "Empty username", message: "wHo are YOU? ", buttontitle: "Ok")
           return
       }
       
       let followerListVC = FollowerListVC()
       followerListVC.username = userNameTextfield.text
       followerListVC.title = userNameTextfield.text
       navigationController?.pushViewController(followerListVC, animated: true)
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
        userNameTextfield.delegate = self
//        userNameTextfield.backgroundColor = .yellow
        
        NSLayoutConstraint.activate([
            userNameTextfield.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 48),
            userNameTextfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            userNameTextfield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            userNameTextfield.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    func configureCallToActionButton() {
        view.addSubview(callToActionButton)
        callToActionButton.addTarget(self, action: #selector(pushFollowerListVC), for: .touchUpInside)
        callToActionButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

extension SearchVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { //keyboardda "go" ya click edende something do
        pushFollowerListVC()
        
//        print("Tapped")
        return true
    }
}

