//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Zohra Guliyeva  on 22.04.24.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius  = 10
        layer.borderWidth =  2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true //Hocam bunun olayi sey. Cok uzun username verirsen ve eger textField'a sigmazsa onu sigacak sekilde fitlestiriyor.
        minimumFontSize = 12
        
        self.backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no //textfielddeki avto duzenlemeni sondurmek ucundur.
         
        placeholder = "User adınızı daxil edin"
    }
}
