//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Zohra Guliyeva  on 25.04.24.
//

import UIKit

extension UIViewController {
    func presenatGFAlertOnMainThread(title: String, message: String, buttontitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttontitle: buttontitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
