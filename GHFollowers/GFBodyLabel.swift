//
//  GFBodyLabel.swift
//  GHFollowers
//
//  Created by Zohra Guliyeva  on 22.04.24.
//

import UIKit

class GFBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) { //stroyboard initializer
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(textAlignMent: NSTextAlignment){
        super.init(frame: .zero)
        self.textAlignment = textAlignMent
        configure()
    }
    
    private func configure() {
        textColor = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        font = UIFont.preferredFont(forTextStyle: .body )
        minimumScaleFactor = 0.75 ///Metin boyutunun ne kadar küçültülebileceğini belirler.
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }

}
