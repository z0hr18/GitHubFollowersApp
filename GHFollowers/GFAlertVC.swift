//
//  GFAlertVC.swift
//  GHFollowers
//
//  Created by Zohra Guliyeva  on 23.04.24.
//

import UIKit

class GFAlertVC: UIViewController {
    let containerView = UIView()
    let titleLabel = GFTitleLabel(textAlignMent: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignMent: .center)
    let actionButton = GFButton(backGroundColor: .systemPink, title: "Ok")
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    init(title:String, message:String, buttontitle: String){
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
}
