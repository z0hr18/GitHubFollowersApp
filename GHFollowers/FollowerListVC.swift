//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Zohra Guliyeva  on 22.04.24.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
         

    }
}
