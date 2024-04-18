//
//  Extension.swift
//  GHFollowers
//
//  Created by Zohra Guliyeva  on 18.04.24.
//

import UIKit

extension UIViewController {
    func setupNavigationBar(backgroundColor: UIColor = .white, titleColor: UIColor = .black) {
        let appearance = UINavigationBarAppearance()
        appearance.shadowColor = .clear
        appearance.backgroundColor = backgroundColor
        appearance.titleTextAttributes = [.foregroundColor: titleColor]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}
