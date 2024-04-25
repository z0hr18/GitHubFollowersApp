//
//  GFTitleLabel.swift
//  GHFollowers
//
//  Created by Zohra Guliyeva  on 22.04.24.
//

import UIKit

class GFTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) { //stroyboard initializer
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(textAlignMent: NSTextAlignment, fontSize: CGFloat){
        super.init(frame: .zero)
        self.textAlignment = textAlignMent
        self.font = UIFont.systemFont(ofSize: fontSize , weight: .bold)
        configure()
    }
    
    private func configure() {
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9 ///Metin boyutunun ne kadar küçültülebileceğini belirler.
        lineBreakMode = .byTruncatingTail ///.byTruncatingTail kullanıldığında, eger metin sığmazsa, metnin sonundaki hisse kesilir ve bir üç noqte (...) add edir.
        translatesAutoresizingMaskIntoConstraints = false
    }
}
