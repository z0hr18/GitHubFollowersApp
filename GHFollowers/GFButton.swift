//
//  GFButton.swift
//  GHFollowers
//
//  Created by Zohra Guliyeva  on 18.04.24.
//

import UIKit

class GFButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //custom initialize
    init(backGroundColor: UIColor, title: String) {
        super.init(frame: .zero) //frameleri buttona gore ayarlayacagimiz ucun burda sifirlayiriq
        self.backgroundColor = backGroundColor //burda self yazmasaq da olar adlari eyni olsa yazmagimiz vacibdir ki dogru tapsin
        self.setTitle(title, for: .normal)
        configure()
    }
    
    //private o demekdiki biz bu functionu bashqa yerde initialize ede bilmeyeceyik
    private func configure() {
        layer.cornerRadius       = 10
        titleLabel?.textColor    = .white
        titleLabel?.font         = UIFont.preferredFont(forTextStyle: .headline) //bu userin telefon ayarlarina gore tenzimlenir
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
